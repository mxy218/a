.class public Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "SoundAndVibrateSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;,
        Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;,
        Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAlarmPreference:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarPreference:Landroid/preference/Preference;

.field private mCallNotificationCategory:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

.field private mEarpodAdjust:Landroid/preference/Preference;

.field private final mHandler:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

.field private mHapticFeedbackTheme:Landroid/preference/Preference;

.field private mHifi:Landroid/preference/Preference;

.field private mMailPreference:Landroid/preference/Preference;

.field private mMmsPreference:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;

.field private mRingUp:Lcom/meizu/common/preference/SwitchPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtonePreference1:Landroid/preference/Preference;

.field private mRingtonePreference2:Landroid/preference/Preference;

.field private final mSettingsObserver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;

.field private mSimState:I

.field private mSlilentMode:Lcom/meizu/common/preference/SwitchPreference;

.field private mVibrateWhenRinging:Lcom/meizu/common/preference/SwitchPreference;

.field private mVolumeSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/VolumeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkSoundPreferenceController:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 666
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$6;

    invoke-direct {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$6;-><init>()V

    sput-object v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSimState:I

    .line 112
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHandler:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    .line 113
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSettingsObserver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;

    .line 114
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mReceiver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mCalendarPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAlarmPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Z)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->doSlientModeChange(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Z)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->doVibrateWhenRingingChange(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/ContentResolver;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/ContentResolver;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHandler:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/ContentResolver;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)I
    .registers 1

    .line 76
    iget p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSimState:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateSlilentMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference1:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference2:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mMmsPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mMailPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method private doSlientModeChange(Z)V
    .registers 5

    .line 409
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    if-eqz p1, :cond_17

    .line 412
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 413
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1d

    .line 416
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_1d
    return-void
.end method

.method private doVibrateWhenRingingChange(Z)V
    .registers 6

    .line 452
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 453
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz p1, :cond_25

    const-string p1, "vibrator"

    .line 455
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    .line 457
    invoke-virtual {p1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    if-eqz v0, :cond_2c

    .line 460
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_2c

    :cond_25
    if-eqz v0, :cond_2c

    .line 464
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private getSimState()I
    .registers 6

    .line 746
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 747
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2d

    .line 752
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v0

    move v3, v2

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 753
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eqz v4, :cond_2b

    if-eq v4, v1, :cond_29

    goto :goto_14

    :cond_29
    move v3, v1

    goto :goto_14

    :cond_2b
    move v2, v1

    goto :goto_14

    :cond_2d
    move v2, v0

    move v3, v2

    :cond_2f
    if-nez v2, :cond_34

    if-nez v3, :cond_34

    return v0

    :cond_34
    if-eqz v2, :cond_39

    if-nez v3, :cond_39

    return v1

    :cond_39
    if-nez v2, :cond_3f

    if-eqz v3, :cond_3f

    const/4 p0, 0x2

    return p0

    :cond_3f
    const/4 p0, 0x3

    return p0
.end method

.method private initCellbroadcastSettingsPreference()V
    .registers 3

    const-string v0, "cell_broadcast_settings"

    .line 255
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedPreference;

    .line 256
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->needShowCellbroadcastSetting()Z

    move-result v1

    if-nez v1, :cond_16

    .line 257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1b

    :cond_16
    const-string p0, "no_config_cell_broadcasts"

    .line 259
    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method private initEarphoneCalibration()V
    .registers 3

    .line 291
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "earpod_adjust"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mEarpodAdjust:Landroid/preference/Preference;

    .line 293
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mEarpodAdjust:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private initHapticFeedback()V
    .registers 3

    .line 493
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "homekey_haptic_feedback_theme"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHapticFeedbackTheme:Landroid/preference/Preference;

    return-void
.end method

.method private initRingUp()V
    .registers 3

    .line 470
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ring_up"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingUp:Lcom/meizu/common/preference/SwitchPreference;

    .line 471
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingUp:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 472
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateRingUp()V

    .line 473
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingUp:Lcom/meizu/common/preference/SwitchPreference;

    new-instance v1, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$4;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initSilentMode()V
    .registers 3

    .line 384
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "slient_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSlilentMode:Lcom/meizu/common/preference/SwitchPreference;

    .line 385
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSlilentMode:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 387
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateSlilentMode()V

    .line 388
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSlilentMode:Lcom/meizu/common/preference/SwitchPreference;

    new-instance v1, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$2;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_23
    return-void
.end method

.method private initVibrateWhenRinging()V
    .registers 3

    .line 423
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVibrateWhenRinging:Lcom/meizu/common/preference/SwitchPreference;

    .line 425
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVibrateWhenRinging:Lcom/meizu/common/preference/SwitchPreference;

    if-nez v0, :cond_1a

    const-string p0, "SoundAndVibrateSettings"

    const-string v0, "Preference not found: vibrate_when_ringing"

    .line 426
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const/4 v1, 0x0

    .line 429
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 430
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateVibrateWhenRinging()V

    .line 431
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVibrateWhenRinging:Lcom/meizu/common/preference/SwitchPreference;

    new-instance v1, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$3;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initVolumePreference()V
    .registers 5

    .line 332
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    .line 334
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    .line 333
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    .line 336
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 335
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 337
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 338
    invoke-virtual {v2}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onResume()V

    xor-int/lit8 v3, v1, 0x1

    .line 339
    invoke-virtual {v2, v3}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 340
    instance-of v3, v2, Lcom/meizu/settings/widget/RestrictedPreference;

    if-eqz v3, :cond_1c

    if-nez v1, :cond_1c

    .line 341
    invoke-virtual {v2, v0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method private isCellBroadcastAppLinkEnabled()Z
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 278
    :try_start_10
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.android.cellbroadcastreceiver"

    .line 279
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_1d

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1e

    :catch_1d
    move v0, v1

    :cond_1e
    return v0
.end method

.method private lookupRingtoneNames()V
    .registers 2

    .line 376
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSimState:I

    .line 377
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateRingtonePreferences()V

    .line 378
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 379
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private needShowCellbroadcastSetting()Z
    .registers 4

    .line 265
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->isCellBroadcastAppLinkEnabled()Z

    move-result v0

    .line 266
    new-instance v1, Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "user"

    .line 267
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 268
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_33

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_33

    if-eqz v0, :cond_33

    .line 270
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const-string v0, "no_config_cell_broadcasts"

    .line 269
    invoke-virtual {v1, v0, p0}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method

.method private updateHapticFeedbackTheme()V
    .registers 3

    .line 776
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0080

    .line 777
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 778
    :goto_12
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHapticFeedbackTheme:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateRingUp()V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingUp:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_16

    .line 486
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "mode_ring_up"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_16
    return-void
.end method

.method private updateRingtoneName(Landroid/net/Uri;I)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 190
    :cond_5
    invoke-static {v0, p1}, Landroid/media/MzRingtoneManager;->getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object p1

    .line 191
    iget-object p1, p1, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHandler:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateRingtonePreferences()V
    .registers 7

    .line 706
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSimState:I

    const-string v1, "ringtone_2"

    const-string v2, "ringtone_1"

    const-string v3, "ringtone"

    const-string v4, "SoundAndVibrateSettings"

    if-eqz v0, :cond_84

    const/4 v5, 0x1

    if-eq v0, v5, :cond_65

    const/4 v5, 0x2

    if-eq v0, v5, :cond_46

    const/4 v5, 0x3

    if-eq v0, v5, :cond_17

    goto/16 :goto_a2

    :cond_17
    const-string v0, "updateRingtonePreferences SIM_STATE_DOUBLE"

    .line 732
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 734
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 736
    :cond_2f
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_42

    .line 737
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 739
    :cond_42
    invoke-virtual {p0, v3}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_a2

    :cond_46
    const-string v0, "updateRingtonePreferences SIM_STATE_2"

    .line 724
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 726
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 728
    :cond_5e
    invoke-virtual {p0, v3}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_a2

    :cond_65
    const-string v0, "updateRingtonePreferences SIM_STATE_1"

    .line 716
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_7d

    .line 718
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 720
    :cond_7d
    invoke-virtual {p0, v3}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_a2

    :cond_84
    const-string v0, "updateRingtonePreferences SIM_STATE_NONE"

    .line 708
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_9c

    .line 710
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 712
    :cond_9c
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :goto_a2
    return-void
.end method

.method private updateSlilentMode()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 403
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSlilentMode:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_14

    .line 404
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_14
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .registers 4

    .line 444
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVibrateWhenRinging:Lcom/meizu/common/preference/SwitchPreference;

    if-nez v0, :cond_5

    return-void

    .line 447
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public enableWorkSync()V
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mWorkSoundPreferenceController:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    if-eqz p0, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->enableWorkSync()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 197
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f12146e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 201
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAudioManager:Landroid/media/AudioManager;

    const p1, 0x7f1600af

    .line 202
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initVibrateWhenRinging()V

    .line 205
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initRingUp()V

    .line 206
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initSilentMode()V

    .line 207
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initHapticFeedback()V

    .line 208
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initEarphoneCalibration()V

    .line 209
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz p1, :cond_3b

    .line 210
    invoke-virtual {p1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->registerEarpodRecevier()V

    .line 212
    :cond_3b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "hifi_pref"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHifi:Landroid/preference/Preference;

    .line 214
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mHifi:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "category_calls_and_notification"

    .line 217
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mCallNotificationCategory:Landroid/preference/PreferenceCategory;

    const-string p1, "ringtone"

    .line 219
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 220
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ringtone_1"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference1:Landroid/preference/Preference;

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ringtone_2"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mRingtonePreference2:Landroid/preference/Preference;

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "mms_sound"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mMmsPreference:Landroid/preference/Preference;

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "mail_sound"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mMailPreference:Landroid/preference/Preference;

    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "calendar_sound"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mCalendarPreference:Landroid/preference/Preference;

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "notification_sound"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 226
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    const-string v0, "volume_ring_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    const-string v0, "volume_music_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    const-string v0, "volume_notification_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initCellbroadcastSettingsPreference()V

    .line 232
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    const-string v0, "com.android.mms"

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mMmsPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_e7
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "alarm_ringtone"

    if-eqz p1, :cond_11c

    .line 237
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result p1

    if-eqz p1, :cond_100

    goto :goto_11c

    .line 241
    :cond_100
    new-instance p1, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/meizu/settings/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p1, v1, p0, v2, v3}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/core/lifecycle/Lifecycle;Landroid/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mWorkSoundPreferenceController:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    .line 244
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mAlarmPreference:Landroid/preference/Preference;

    goto :goto_134

    .line 238
    :cond_11c
    :goto_11c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "sound_work_settings_section"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_134
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 367
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 311
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 312
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 313
    invoke-virtual {v0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onDestroyView()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 348
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 349
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSettingsObserver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->register(Z)V

    .line 350
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mReceiver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->register(Z)V

    .line 351
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 352
    invoke-virtual {v0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onPause()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 659
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundAndVibrateSettings"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 661
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 3

    .line 319
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 320
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateSlilentMode()V

    .line 321
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateVibrateWhenRinging()V

    .line 322
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateRingUp()V

    .line 323
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->lookupRingtoneNames()V

    .line 324
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mSettingsObserver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->register(Z)V

    .line 325
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mReceiver:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$Receiver;->register(Z)V

    .line 327
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initVolumePreference()V

    .line 328
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->updateHapticFeedbackTheme()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 304
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 305
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "SoundAndVibrateSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 358
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 359
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string v1, "SoundAndVibrateSettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->mVolumeSettings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 361
    invoke-virtual {v0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->onStop()V

    goto :goto_14

    :cond_24
    return-void
.end method
