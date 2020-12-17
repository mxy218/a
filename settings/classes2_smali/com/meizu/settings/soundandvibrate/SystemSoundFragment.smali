.class public Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "SystemSoundFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;
    }
.end annotation


# static fields
.field private static final OBSERVER_PREF_KEY_LIST:[Ljava/lang/String;

.field private static final OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDtmfToneSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOtherLongpressSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenLockSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mScreenshotSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mSystemTipsSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mTask:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "charging_sounds_enabled"

    const-string v1, "dtmf_tone"

    const-string v2, "sound_effects_enabled"

    const-string v3, "lockscreen_sounds_enabled"

    const-string v4, "camera_sounds_enabled"

    const-string v5, "haptic_feedback_enabled"

    const-string v6, "screenshot_sounds_enabled"

    .line 47
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

    const-string v1, "system_tips_sound"

    const-string v2, "dtmf_tone"

    const-string v3, "sound_effects"

    const-string v4, "lock_sounds"

    const-string v5, "camera_click_sounds"

    const-string v6, "longpress_feedback"

    const-string v7, "screenshot_sounds"

    .line 57
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_PREF_KEY_LIST:[Ljava/lang/String;

    .line 324
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$3;

    invoke-direct {v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;-><init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$2;-><init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Landroid/net/Uri;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->updateSwitch(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Landroid/media/AudioManager;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "system_tips_sound"

    .line 165
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSystemTipsSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "dtmf_tone"

    .line 166
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mDtmfToneSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "sound_effects"

    .line 167
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setShouldDisableView(Z)V

    const-string v0, "lock_sounds"

    .line 170
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenLockSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "camera_click_sounds"

    .line 171
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mCameraSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "screenshot_sounds"

    .line 172
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenshotSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "volume_system_settings"

    .line 173
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSystemTipsSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mDtmfToneSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenLockSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mCameraSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenshotSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "longpress_feedback"

    .line 182
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mOtherLongpressSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mOtherLongpressSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method private observe()V
    .registers 8

    .line 241
    sget-object v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 242
    iget-object v5, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    .line 243
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mObserver:Landroid/database/ContentObserver;

    .line 242
    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private startChangeSoundEffectsTask(Z)V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mTask:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 318
    :cond_8
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;-><init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mTask:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;

    .line 319
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mTask:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSwitch(Landroid/net/Uri;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_81

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSystemTipsSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "charging_sounds_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mDtmfToneSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v0

    :goto_25
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "sound_effects_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_36

    move v2, v1

    goto :goto_37

    :cond_36
    move v2, v0

    :goto_37
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenLockSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_48

    move v2, v1

    goto :goto_49

    :cond_48
    move v2, v0

    :goto_49
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mCameraSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "camera_sounds_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5a

    move v2, v1

    goto :goto_5b

    :cond_5a
    move v2, v0

    :goto_5b
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenshotSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screenshot_sounds_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6c

    move v2, v1

    goto :goto_6d

    :cond_6c
    move v2, v0

    :goto_6d
    invoke-virtual {p1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mOtherLongpressSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_7d

    move v0, v1

    :cond_7d
    invoke-virtual {p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_b7

    .line 205
    :cond_81
    sget-object v2, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

    array-length v2, v2

    move v3, v0

    :goto_85
    if-ge v3, v2, :cond_b7

    .line 207
    sget-object v4, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 208
    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 209
    sget-object v4, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_PREF_KEY_LIST:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 210
    instance-of v5, v4, Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v5, :cond_b4

    .line 211
    check-cast v4, Lcom/meizu/common/preference/SwitchPreference;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->OBSERVER_SYSTEM_SETTINGS_LIST:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_b0

    move v0, v1

    :cond_b0
    invoke-virtual {v4, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_b7

    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_b7
    :goto_b7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 155
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600b0

    .line 156
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mContext:Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->initPreference()V

    .line 159
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 160
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mContext:Landroid/content/Context;

    .line 274
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    if-eqz p0, :cond_d

    .line 275
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onDestroyView()V

    :cond_d
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 250
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1c

    .line 253
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 254
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    .line 256
    :cond_1c
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    if-eqz p0, :cond_23

    .line 257
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onPause()V

    :cond_23
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemSoundFragment"

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 282
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSystemTipsSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_1d

    .line 284
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "charging_sounds_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60

    .line 287
    :cond_1d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mDtmfToneSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_29

    .line 288
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "dtmf_tone"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60

    .line 291
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mSoundEffectsSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_31

    .line 292
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->startChangeSoundEffectsTask(Z)V

    goto :goto_60

    .line 293
    :cond_31
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenLockSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_3d

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "lockscreen_sounds_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60

    .line 297
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mCameraSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_49

    .line 298
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "camera_sounds_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60

    .line 301
    :cond_49
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mOtherLongpressSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_55

    .line 302
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "haptic_feedback_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60

    .line 305
    :cond_55
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mScreenshotSoundSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_60

    .line 306
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "screenshot_sounds_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_60
    :goto_60
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .registers 3

    .line 228
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->updateSwitch(Landroid/net/Uri;)V

    .line 230
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->observe()V

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1d

    .line 232
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 233
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    .line 235
    :cond_1d
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    if-eqz p0, :cond_24

    .line 236
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onResume()V

    :cond_24
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 222
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 263
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 264
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->mVolumeSystemSettings:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    if-eqz p0, :cond_13

    .line 266
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onStop()V

    :cond_13
    return-void
.end method
