.class public Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "HomekeyHapicFeedbackThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;,
        Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;
    }
.end annotation


# instance fields
.field private final HOMEKEY_VOLUME_DEFAULTTHEME:I

.field private final HOMEKEY_VOLUME_DISABLETHEME:I

.field private final LAST_HOMEKEY_VOLUME_LEVEL:Ljava/lang/String;

.field private final SEEKBAR_MAX_RANGE:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyVolumeChangeByRingerMode:Z

.field private mHomekeyFeedBackLevelTexts:[Ljava/lang/String;

.field private mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

.field private mHomekeyIntensityUri:Landroid/net/Uri;

.field private mHomekeyTimeVibrator:[I

.field private mHomekeyVolumeIconListener:Landroid/view/View$OnClickListener;

.field private mHomekeyVolumeLevelTexts:[Ljava/lang/CharSequence;

.field private mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

.field private mHomekeyVolumeSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mHomekeyVolumeUri:Landroid/net/Uri;

.field private mMuteReceiver:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPresskeyFeedBackLevelTexts:[Ljava/lang/String;

.field private mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

.field private mPresskeyIntensityUri:Landroid/net/Uri;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mlastHomeKeyVolume:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->HOMEKEY_VOLUME_DISABLETHEME:I

    const/16 v1, 0x20

    .line 65
    iput v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->HOMEKEY_VOLUME_DEFAULTTHEME:I

    const-string v2, "homekey_volume_level"

    .line 94
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeUri:Landroid/net/Uri;

    const-string v2, "homekey_feedback_intensity"

    .line 96
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyIntensityUri:Landroid/net/Uri;

    const-string v2, "presskey_feedback_intensity"

    .line 98
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyIntensityUri:Landroid/net/Uri;

    .line 99
    iput v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    .line 100
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    const-string v0, "last_homekey_volume_level"

    .line 103
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->LAST_HOMEKEY_VOLUME_LEVEL:Ljava/lang/String;

    const/16 v0, 0x3c

    .line 109
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->SEEKBAR_MAX_RANGE:I

    .line 111
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mObserver:Landroid/database/ContentObserver;

    .line 126
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$2;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 150
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$3;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeIconListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance v0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$4;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateLevelProgress(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Z)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->playPressKeyFeedbackTheme(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->handleAudioManagerRingModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyIntensityUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyIntensityUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/os/Handler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)I
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;II)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->playHomeKeySoundEffect()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->playHomeKeyFeedbackTheme()V

    return-void
.end method

.method private getMBackFeedbackIntensity(I)Ljava/lang/String;
    .registers 3

    const-string p0, "content://com.immersion.android.haptics.defaulttheme"

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_16

    :cond_e
    const-string p0, "com.meizu.flyme.android.haptictheme.LRA_Strong"

    goto :goto_16

    :cond_11
    const-string p0, "com.meizu.flyme.android.haptictheme.LRA_Soft"

    goto :goto_16

    :cond_14
    const-string p0, "disable"

    :cond_16
    :goto_16
    return-object p0
.end method

.method private getPressFeedbackIntensity(I)Ljava/lang/String;
    .registers 3

    const-string p0, "com.meizu.flyme.android.haptictheme.Press_Default"

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_16

    :cond_e
    const-string p0, "com.meizu.flyme.android.haptictheme.Press_Strong"

    goto :goto_16

    :cond_11
    const-string p0, "com.meizu.flyme.android.haptictheme.Press_Soft"

    goto :goto_16

    :cond_14
    const-string p0, "disable"

    :cond_16
    :goto_16
    return-object p0
.end method

.method private getProgressByLevel(I)I
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_12

    .line 247
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const/16 p1, 0x20

    const-string v0, "homekey_volume_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_6f

    :cond_12
    const-string v4, "com.meizu.flyme.android.haptictheme.LRA_Strong"

    if-ne p1, v2, :cond_40

    .line 249
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "homekey_feedback_intensity"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "disable"

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_52

    :cond_27
    const-string p1, "com.meizu.flyme.android.haptictheme.LRA_Soft"

    .line 252
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_5c

    :cond_30
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_6e

    .line 256
    :cond_39
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    goto :goto_6f

    :cond_40
    if-ne p1, v3, :cond_6e

    .line 260
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "presskey_feedback_intensity"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.meizu.flyme.android.haptictheme.Press_Soft"

    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    :goto_52
    move v0, v1

    goto :goto_6f

    :cond_54
    const-string p1, "com.meizu.flyme.android.haptictheme.Press_Default"

    .line 263
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    :goto_5c
    move v0, v2

    goto :goto_6f

    :cond_5e
    const-string p1, "com.meizu.flyme.android.haptictheme.Press_Strong"

    .line 265
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_6e

    .line 267
    :cond_67
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v0, v3

    :goto_6f
    return v0
.end method

.method private handleAudioManagerRingModeChanged()V
    .registers 8

    .line 610
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HomekeyHapicFeedbackThemeFragment"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    if-nez v0, :cond_29

    .line 611
    :cond_e
    iget-boolean v4, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    if-nez v4, :cond_29

    .line 614
    iget-object v4, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const/16 v5, 0x20

    const-string v6, "homekey_volume_level"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    .line 615
    invoke-direct {p0, v3, v3}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    .line 617
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    const-string v1, "handleAudioManagerRingModeChanged mHomeKeyVolumeChangeByRingerMode true"

    .line 618
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_29
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 619
    iget-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    if-eqz v1, :cond_3c

    .line 620
    iput-boolean v3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    .line 621
    iget v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    invoke-direct {p0, v3, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    const-string v1, "handleAudioManagerRingModeChanged mHomeKeyVolumeChangeByRingerMode false"

    .line 623
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3c
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAudioManagerRingModeChanged audioManagerRingerMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastHomeKeyVolume:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",Change:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initHomekeyVolumeAndFeedbackSettings()V
    .registers 4

    const v0, 0x7f1600a7

    .line 211
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "homekey_volume_settings"

    .line 213
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setMax(I)V

    .line 215
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setProgress(I)V

    .line 216
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "homekey_feedback_settings"

    .line 220
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 222
    :goto_3e
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedBackLevelTexts:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_62

    .line 223
    new-instance v0, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    .line 224
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedBackLevelTexts:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_62
    const-string v0, "presskey_feedback_settings"

    .line 230
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    .line 232
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private playHomeKeyFeedbackTheme()V
    .registers 4

    .line 444
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x1

    .line 445
    invoke-direct {p0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result v1

    .line 446
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyTimeVibrator:[I

    aget p0, p0, v1

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playHomeKeyFeedbackTheme : vibrator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",timeVibrator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3b

    if-lez p0, :cond_3b

    int-to-long v1, p0

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3b
    return-void
.end method

.method private playHomeKeySoundEffect()V
    .registers 5

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "homekey_volume_level"

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "HomekeyHapicFeedbackThemeFragment"

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playHomeKeySoundEffect : audioService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",sound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3c

    if-lez v0, :cond_3c

    .line 479
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private playPressKeyFeedbackTheme(Z)V
    .registers 5

    const-string v0, "device_control"

    .line 455
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 457
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "presskey_feedback_intensity"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_14
    const-string v1, "com.meizu.flyme.android.haptictheme.Press_Soft"

    .line 459
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_4f

    const-string v2, "/sys/class/meizu/motor/set_cspress"

    if-eqz v1, :cond_29

    if-eqz p1, :cond_23

    :try_start_20
    const-string p0, "2 1"

    goto :goto_25

    :cond_23
    const-string p0, "2 0"

    .line 460
    :goto_25
    invoke-interface {v0, v2, p0}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_29
    const-string v1, "com.meizu.flyme.android.haptictheme.Press_Default"

    .line 461
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz p1, :cond_36

    const-string p0, "1 1"

    goto :goto_38

    :cond_36
    const-string p0, "1 0"

    .line 462
    :goto_38
    invoke-interface {v0, v2, p0}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_3c
    const-string v1, "com.meizu.flyme.android.haptictheme.Press_Strong"

    .line 463
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    if-eqz p1, :cond_49

    const-string p0, "0 1"

    goto :goto_4b

    :cond_49
    const-string p0, "0 0"

    .line 464
    :goto_4b
    invoke-interface {v0, v2, p0}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 467
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method private setLevelByProgress(II)V
    .registers 7

    const/4 v0, 0x2

    if-nez p1, :cond_27

    .line 334
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "homekey_volume_level"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-lez p2, :cond_53

    .line 335
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 336
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-eq v1, v0, :cond_53

    .line 337
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    const/4 v1, 0x0

    .line 338
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    .line 339
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_53

    :cond_27
    const/4 v1, 0x1

    const-string v2, "presskey_feedback_intensity"

    if-ne p1, v1, :cond_41

    .line 342
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    .line 343
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getMBackFeedbackIntensity(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "homekey_feedback_intensity"

    .line 342
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    .line 346
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getPressFeedbackIntensity(I)Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {v0, v2, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    :cond_41
    if-ne p1, v0, :cond_53

    .line 349
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 350
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    .line 351
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getPressFeedbackIntensity(I)Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {v0, v2, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    :cond_53
    :goto_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SeekBarLevel type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateHomeKeyFeedbackPreference(Landroid/preference/Preference;)V
    .registers 7

    .line 399
    instance-of v0, p1, Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz v0, :cond_25

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_25

    .line 402
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_1d

    .line 404
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_22

    .line 406
    :cond_1d
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v1, v4, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return-void
.end method

.method private updateLevelProgress(I)V
    .registers 4

    .line 359
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result v0

    if-nez p1, :cond_e

    .line 360
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumePreference:Lcom/meizu/settings/widget/SymmetrySeekBarPreference;

    if-eqz v1, :cond_e

    .line 361
    invoke-virtual {v1, v0}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setProgress(I)V

    goto :goto_3b

    :cond_e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    if-ltz v0, :cond_25

    .line 362
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 363
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateHomeKeyFeedbackPreference(Landroid/preference/Preference;)V

    goto :goto_3b

    :cond_25
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3b

    if-ltz v0, :cond_3b

    .line 364
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result p1

    if-ge v0, p1, :cond_3b

    .line 365
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updatePressKeyFeedbackPreference(Landroid/preference/Preference;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private updatePressKeyFeedbackPreference(Landroid/preference/Preference;)V
    .registers 7

    .line 413
    instance-of v0, p1, Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz v0, :cond_25

    .line 414
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_25

    .line 416
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_1d

    .line 418
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_22

    .line 420
    :cond_1d
    check-cast v3, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-virtual {v3, v1, v4, v1}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 191
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeLevelTexts:[Ljava/lang/CharSequence;

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedBackLevelTexts:[Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyFeedBackLevelTexts:[Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0xa030018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyTimeVibrator:[I

    .line 199
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 200
    new-instance p1, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mMuteReceiver:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;

    .line 201
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "homekey_volume_level"

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->initHomekeyVolumeAndFeedbackSettings()V

    const-string p0, "HomekeyHapicFeedbackThemeFragment"

    const-string p1, "onCreate"

    .line 206
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 582
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 542
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 543
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 544
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1c

    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1c

    .line 545
    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    :cond_1c
    const-string p0, "HomekeyHapicFeedbackThemeFragment"

    const-string v0, "onPause"

    .line 549
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 371
    instance-of v0, p2, Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz v0, :cond_7d

    .line 372
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyFeedbackCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_43

    const/4 v0, 0x1

    .line 373
    invoke-direct {p0, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result v1

    .line 374
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 375
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    .line 377
    :cond_33
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateHomeKeyFeedbackPreference(Landroid/preference/Preference;)V

    .line 378
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_70

    .line 379
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_70

    .line 383
    :cond_43
    invoke-direct {p0, v2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->getProgressByLevel(I)I

    move-result v0

    .line 384
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 385
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    .line 387
    :cond_60
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updatePressKeyFeedbackPreference(Landroid/preference/Preference;)V

    .line 388
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_70

    const/4 v1, 0x3

    .line 389
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "homekey_feedback"

    const-string v3, "HomekeyHapicFeedbackThemeFragment"

    invoke-virtual {v0, v2, v3, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_7d
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 515
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 516
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyVolumeUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomekeyIntensityUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mPresskeyIntensityUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 520
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2f

    .line 521
    invoke-direct {p0, v3, v3}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->setLevelByProgress(II)V

    .line 522
    iput-boolean v2, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    goto :goto_31

    .line 524
    :cond_2f
    iput-boolean v3, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHomeKeyVolumeChangeByRingerMode:Z

    .line 526
    :goto_31
    invoke-direct {p0, v3}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateLevelProgress(I)V

    .line 527
    invoke-direct {p0, v2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateLevelProgress(I)V

    .line 528
    invoke-direct {p0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->updateLevelProgress(I)V

    .line 529
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mMuteReceiver:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->setListening(Z)V

    .line 530
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_52

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_52

    .line 531
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 532
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mVolumeKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    .line 535
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 555
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 556
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HomekeyHapicFeedbackThemeFragment.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 558
    new-instance v1, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$LocalHandler;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    const-string p0, "HomekeyHapicFeedbackThemeFragment"

    const-string v0, "onStart"

    .line 560
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 566
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 567
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 568
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mHandler:Landroid/os/Handler;

    .line 571
    :cond_11
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mMuteReceiver:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->setListening(Z)V

    .line 572
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    .line 573
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->mlastHomeKeyVolume:I

    const-string v1, "homekey_volume_level"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_29
    const-string p0, "HomekeyHapicFeedbackThemeFragment"

    const-string v0, "onStop"

    .line 576
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
