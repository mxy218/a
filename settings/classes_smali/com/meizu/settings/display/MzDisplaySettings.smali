.class public Lcom/meizu/settings/display/MzDisplaySettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdaptiveKeepBrightScreenPreference:Landroid/preference/Preference;

.field private mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mBluelight:Landroid/preference/Preference;

.field private mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

.field private mDeepColorModePreference:Landroid/preference/Preference;

.field private mDisplayMode:Landroid/preference/Preference;

.field private mEasyMode:Landroid/preference/Preference;

.field private mFontSizeAndScreenZoomPreference:Landroid/preference/Preference;

.field private mHideFringe:Lcom/meizu/common/preference/SwitchPreference;

.field private mIsInSmallWindowMode:Z

.field private mNeedOverridePending:Z

.field private mOldAutomatic:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRAngleAdjustPreference:Landroid/preference/Preference;

.field private mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenOffDisplaySwitchPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 525
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$3;

    invoke-direct {v0}, Lcom/meizu/settings/display/MzDisplaySettings$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/MzDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mNeedOverridePending:Z

    .line 116
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/MzDisplaySettings$1;-><init>(Lcom/meizu/settings/display/MzDisplaySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 518
    new-instance v0, Lcom/meizu/settings/display/MzDisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/display/MzDisplaySettings$2;-><init>(Lcom/meizu/settings/display/MzDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/MzDisplaySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/MzDisplaySettings;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/res/Resources;)Z
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method private getBlurState()Z
    .registers 3

    const-string/jumbo p0, "persist.sys.disable_blur_view"

    .line 608
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.static_blur_mode"

    .line 609
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .registers 2

    .line 458
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 459
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 458
    :goto_f
    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    return-void
.end method

.method private initAutoRotatePreference()V
    .registers 4

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "auto_rotate"

    if-eqz v1, :cond_20

    .line 264
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_23

    .line 267
    :cond_20
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private initRaiseFlip()V
    .registers 7

    const-string/jumbo v0, "raise_flip"

    .line 246
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeLabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->hasRaiseFlipFeature()Z

    move-result v0

    .line 248
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_55

    if-nez v0, :cond_55

    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->supportRaiseFlipFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_55

    .line 252
    :cond_2e
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "flipwakeup_switch"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3f

    move v0, v3

    goto :goto_40

    :cond_3f
    move v0, v2

    .line 254
    :goto_40
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "raisewakeup_switch"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_4e

    move v2, v3

    .line 256
    :cond_4e
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5e

    .line 250
    :cond_55
    :goto_55
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_5e
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x1110027

    .line 507
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private onBrightnessModeChanged()V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_18

    .line 512
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_18
    return-void
.end method

.method private removeFontSizeAndScreenZoomPreference()V
    .registers 3

    .line 619
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 620
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->isWindowMode(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mIsInSmallWindowMode:Z

    .line 621
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mIsInSmallWindowMode:Z

    if-eqz v0, :cond_37

    .line 622
    :cond_2e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mFontSizeAndScreenZoomPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    return-void
.end method

.method private updateAdaptiveKeepBrightScreenPreference()V
    .registers 4

    .line 330
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "adaptive_keep_bright_screen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_22

    .line 333
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAdaptiveKeepBrightScreenPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120fa9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 335
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAdaptiveKeepBrightScreenPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1204f2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_32
    return-void
.end method

.method private updateDeepColorModePreference()V
    .registers 7

    .line 305
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flymelab_flyme_night_mode"

    .line 307
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v4, "flymelab_flyme_night_mode_type"

    .line 308
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5a

    const/16 v2, 0x17

    const-string v3, "flymelab_flyme_night_mode_time_start_h"

    .line 310
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "flymelab_flyme_night_mode_time_start_min"

    .line 311
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x7

    const-string v5, "flymelab_flyme_night_mode_time_end_h"

    .line 312
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "flymelab_flyme_night_mode_time_end_min"

    .line 313
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    :cond_5a
    if-ne v4, v3, :cond_68

    .line 317
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121585

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    :cond_68
    if-eqz v2, :cond_76

    .line 320
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120fa9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 322
    :cond_76
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_81
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDeepColorModePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreference()V
    .registers 3

    .line 294
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.flyme.easylauncher"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isPowerSuperSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_20
    const-string v0, "easy_mode"

    .line 296
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 297
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mEasyMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_31
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updateDeepColorModePreference()V

    return-void
.end method

.method private updateState()V
    .registers 3

    .line 464
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->onBrightnessModeChanged()V

    .line 465
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->getBlurState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 467
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->supportDisplayMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 468
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDisplayMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 469
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->getCurrentDisplayMode(Landroid/content/Context;)I

    move-result p0

    .line 468
    invoke-static {v1, p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->getNameByValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2b
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .registers 10

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    .line 479
    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_14

    const p1, 0x7f120700

    .line 480
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    .line 482
    :cond_14
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    .line 483
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p0, :cond_58

    .line 484
    array-length v2, p0

    if-nez v2, :cond_22

    goto :goto_58

    :cond_22
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 488
    :goto_25
    array-length v5, v1

    if-ge v3, v5, :cond_3a

    .line 489
    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-ltz v5, :cond_37

    move v4, v3

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 494
    :cond_3a
    array-length p1, v1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-ne v4, p1, :cond_46

    .line 495
    aget-object p0, p0, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    .line 497
    :cond_46
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f121250

    new-array p2, p2, [Ljava/lang/Object;

    aget-object p0, p0, v4

    aput-object p0, p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    :cond_58
    :goto_58
    const-string p0, ""

    .line 503
    :goto_5a
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 130
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1206e9

    .line 132
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const p1, 0x7f16009e

    .line 138
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "brightness_meizu"

    .line 140
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BrightnessPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {p1}, Lcom/meizu/settings/display/BrightnessPreference;->onCreate()V

    const-string/jumbo p1, "screen_timeout"

    .line 143
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TimeoutListPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    const-string/jumbo p1, "screen_off_timeout"

    const-wide/16 v1, 0x7530

    .line 144
    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isPowerSuperSavingMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_5e

    .line 149
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-virtual {p1, v3}, Lcom/meizu/settings/widget/RestrictedListPreference;->setEnabled(Z)V

    .line 151
    :cond_5e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_81

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 154
    invoke-static {v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 157
    iget-object v5, v4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 158
    invoke-virtual {p1, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 159
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenTimeoutPreference:Lcom/meizu/settings/widget/TimeoutListPreference;

    invoke-virtual {p1, v5, v6, v4}, Lcom/meizu/settings/widget/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 162
    :cond_81
    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/display/MzDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    const-string p1, "font_and_screen_zoom"

    .line 164
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mFontSizeAndScreenZoomPreference:Landroid/preference/Preference;

    .line 166
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->removeFontSizeAndScreenZoomPreference()V

    const-string p1, "automatic_brightnessr_meizu"

    .line 168
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    :try_start_99
    const-string/jumbo p1, "screen_brightness_mode"

    .line 171
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I
    :try_end_a2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_99 .. :try_end_a2} :catch_a3

    goto :goto_a5

    .line 173
    :catch_a3
    iput v3, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I

    .line 175
    :goto_a5
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mOldAutomatic:I

    const/4 v1, 0x1

    if-eqz v0, :cond_ad

    move v3, v1

    :cond_ad
    invoke-virtual {p1, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "adaptive_keep_bright_screen"

    .line 177
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAdaptiveKeepBrightScreenPreference:Landroid/preference/Preference;

    .line 178
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updateAdaptiveKeepBrightScreenPreference()V

    const-string p1, "blur_view_effect"

    .line 181
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 190
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "color_temperature_flyme"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e5
    const-string v0, "display_mode"

    .line 193
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDisplayMode:Landroid/preference/Preference;

    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->supportDisplayMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f9

    if-eqz p1, :cond_102

    .line 195
    :cond_f9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDisplayMode:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_102
    const-string v0, "bluelight_reduction_fragment"

    .line 198
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBluelight:Landroid/preference/Preference;

    .line 199
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBluelight:Landroid/preference/Preference;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "flyme.hardware.screen.bluelightreduction"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    if-eqz p1, :cond_12d

    .line 201
    :cond_124
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBluelight:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_12d
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->initRaiseFlip()V

    .line 207
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->initAutoRotatePreference()V

    const-string v0, "aod_switch"

    .line 208
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenOffDisplaySwitchPreference:Landroid/preference/Preference;

    if-nez p1, :cond_157

    .line 210
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "flyme.hardware.aod"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_157

    const-string p1, "M1822"

    .line 211
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_157

    const-string p1, "M1852"

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_160

    .line 212
    :cond_157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenOffDisplaySwitchPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_160
    const-string p1, "easy_mode"

    .line 215
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mEasyMode:Landroid/preference/Preference;

    const-string p1, "hide_fringe"

    .line 217
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mHideFringe:Lcom/meizu/common/preference/SwitchPreference;

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mHideFringe:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo p1, "r_angle_adjust"

    .line 226
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRAngleAdjustPreference:Landroid/preference/Preference;

    .line 227
    invoke-static {}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isRAngleFeatureSupport()Z

    move-result p1

    if-nez p1, :cond_193

    .line 228
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRAngleAdjustPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_193
    const-string p1, "deep_color_mode"

    .line 231
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDeepColorModePreference:Landroid/preference/Preference;

    .line 233
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_1aa

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDeepColorModePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_1aa
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 238
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_1c4

    .line 240
    array-length p1, p1

    if-gt p1, v1, :cond_1d2

    .line 241
    :cond_1c4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "screen_refresh_rate"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d2
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 371
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/display/BrightnessPreference;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 352
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BrightnessPreference;->onPause()V

    .line 354
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 356
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 357
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_24
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 376
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v2, "MzDisplaySettings"

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    const-string/jumbo p1, "screen_timeout"

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 381
    :try_start_14
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 382
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long p1, p1

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/display/MzDisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    const-string p1, "could not persist screen timeout setting"

    .line 385
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 14

    .line 394
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v2, "MzDisplaySettings"

    invoke-virtual {v1, v2, v0, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 396
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoBrightnessPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v1, :cond_23

    .line 397
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 398
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_1c

    move v3, v4

    :cond_1c
    const-string/jumbo p1, "screen_brightness_mode"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    :cond_23
    const-string v1, "color_temperature_flyme"

    .line 401
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 403
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 406
    :cond_3a
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBlurViewEffect:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_5f

    .line 407
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "persist.sys.static_blur_mode"

    const-string/jumbo v2, "persist.sys.disable_blur_view"

    if-eqz v0, :cond_55

    const-string/jumbo v0, "true"

    .line 408
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    :cond_55
    const-string v0, "false"

    .line 411
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    .line 414
    :cond_5f
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v1, :cond_67

    .line 415
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->handleLockScreenRotationPreferenceClick()V

    return v4

    .line 417
    :cond_67
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDisplayMode:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7a

    .line 418
    invoke-static {}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->getDisplayModeFragment()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f12071b

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v4

    .line 421
    :cond_7a
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mScreenOffDisplaySwitchPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8b

    const v8, 0x7f12013d

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-string v7, "com.meizu.settings.display.aod.AODSettingsFragment"

    move-object v5, p0

    move-object v6, p0

    .line 422
    invoke-virtual/range {v5 .. v10}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v4

    .line 424
    :cond_8b
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mEasyMode:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9f

    .line 425
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "easy_mode_click"

    invoke-virtual {v0, v1, v2, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->startEasyModeSettings(Landroid/content/Context;)V

    goto/16 :goto_119

    :cond_9f
    const-string/jumbo v1, "raise_flip"

    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 428
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_b6

    move p2, v4

    goto :goto_b7

    :cond_b6
    move p2, v3

    :goto_b7
    const/4 v0, -0x2

    const-string/jumbo v1, "raisewakeup_switch"

    .line 428
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 430
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 431
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRaiseFlip:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_cb

    move v3, v4

    :cond_cb
    const-string p0, "flipwakeup_switch"

    .line 430
    invoke-static {p1, p0, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v4

    .line 433
    :cond_d1
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mFontSizeAndScreenZoomPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_e0

    .line 434
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.settings.SCREEN_ZOOM_FONTSIZE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 437
    :cond_e0
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mHideFringe:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_f7

    .line 438
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 439
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mHideFringe:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_f1

    move v3, v4

    :cond_f1
    const-string p0, "mz_fringe_hide"

    .line 438
    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    .line 441
    :cond_f7
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mDeepColorModePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_119

    .line 443
    :try_start_fb
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.flyme.sdkstage.nightmode.intent.NIGHTMODE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.meizu.flyme.sdkstage"

    .line 444
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 447
    iput-boolean v4, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mNeedOverridePending:Z
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_113} :catch_114

    goto :goto_118

    :catch_114
    move-exception p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_118
    return v4

    .line 454
    :cond_119
    :goto_119
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 273
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 274
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    .line 275
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 274
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updateState()V

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BrightnessPreference;->onResume()V

    .line 280
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mAutoRotateSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 285
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBluelight:Landroid/preference/Preference;

    if-eqz v0, :cond_4c

    .line 286
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->getBluelightPreferenceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4c
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updateAdaptiveKeepBrightScreenPreference()V

    .line 290
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->updatePreference()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 341
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 342
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "MzDisplaySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BrightnessPreference;->onStart()V

    .line 345
    iget-boolean v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mNeedOverridePending:Z

    if-eqz v0, :cond_1d

    .line 346
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mNeedOverridePending:Z

    :cond_1d
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 363
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 364
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "MzDisplaySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 365
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings;->mBrightnessPreference:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/display/BrightnessPreference;->onStop()V

    return-void
.end method
