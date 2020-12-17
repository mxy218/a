.class public Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/meizu/settings/core/lifecycle/events/OnResume;
.implements Lcom/meizu/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$UnifyWorkDialogFragment;
    }
.end annotation


# instance fields
.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mParent:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVoiceCapable:Z

.field private mWorkAlarmRingtonePreference:Landroid/preference/Preference;

.field private mWorkNotificationRingtonePreference:Landroid/preference/Preference;

.field private mWorkPhoneRingtonePreference:Landroid/preference/Preference;

.field private mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

.field private mWorkUsePersonalSounds:Landroid/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;-><init>(Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mVoiceCapable:Z

    .line 86
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 87
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/core/lifecycle/Lifecycle;Landroid/preference/PreferenceScreen;)V
    .registers 11

    .line 92
    new-instance v4, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v4, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;Landroid/preference/PreferenceScreen;)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;-><init>(Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 100
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mVoiceCapable:Z

    .line 101
    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mParent:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 102
    iput-object p4, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    if-eqz p3, :cond_21

    .line 104
    invoke-virtual {p3, p0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/meizu/settings/core/lifecycle/LifecycleObserver;)Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 106
    :cond_21
    iput-object p5, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string p2, "sound_work_settings_section"

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method private disableWorkSync()V
    .registers 2

    .line 276
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->disableSyncFromParent(Landroid/content/Context;)V

    .line 277
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->disableWorkSyncSettings()V

    return-void
.end method

.method private disableWorkSyncSettings()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 282
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateWorkRingtoneSummaries()V

    return-void
.end method

.method private enableWorkSyncSettings()V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    const v2, 0x7f121a15

    if-eqz v0, :cond_16

    .line 266
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    :cond_16
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 272
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .registers 3

    .line 193
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 196
    :cond_8
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private initWorkPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;
    .registers 3

    .line 201
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;

    .line 202
    invoke-virtual {p1, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    iget p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    invoke-virtual {p1, p0}, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->setUserId(I)V

    return-object p1
.end method

.method private shouldShowRingtoneSettings()Z
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 6

    if-eqz p1, :cond_1c

    .line 184
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/AudioHelper;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1c

    .line 187
    :cond_11
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    .line 188
    invoke-static {p1, p0}, Landroid/media/MzRingtoneManager;->getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object p0

    .line 189
    iget-object p0, p0, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    return-object p0

    .line 185
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f120bdb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateWorkPreferences()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_5

    return-void

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 215
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    .line 218
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_2d

    .line 219
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    const-string v1, "work_use_personal_sounds"

    .line 220
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/preference/TwoStatePreference;

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/meizu/settings/soundandvibrate/-$$Lambda$WorkSoundPreferenceController$jeR5R8UfnZbh_WRPsIUbWfm8bsU;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/-$$Lambda$WorkSoundPreferenceController$jeR5R8UfnZbh_WRPsIUbWfm8bsU;-><init>(Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    if-nez v0, :cond_3b

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    const-string v1, "work_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->initWorkPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    .line 235
    :cond_3b
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    if-nez v0, :cond_49

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    const-string v1, "work_notification_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->initWorkPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    .line 239
    :cond_49
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    if-nez v0, :cond_57

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    const-string v1, "work_alarm_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->initWorkPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    .line 243
    :cond_57
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mVoiceCapable:Z

    if-nez v0, :cond_65

    .line 244
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPreferenceCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    .line 248
    :cond_65
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    const-string v3, "sync_parent_sounds"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    .line 251
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->enableWorkSyncSettings()V

    goto :goto_80

    .line 253
    :cond_7d
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->disableWorkSyncSettings()V

    :goto_80
    return-void
.end method

.method private updateWorkRingtoneSummaries()V
    .registers 4

    .line 291
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    .line 295
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_10
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Landroid/preference/Preference;

    const/4 v2, 0x2

    .line 298
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 297
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Landroid/preference/Preference;

    const/4 v2, 0x4

    .line 300
    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 299
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public enableWorkSync()V
    .registers 2

    .line 258
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->enableSyncFromParent(Landroid/content/Context;)V

    .line 259
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->enableWorkSyncSettings()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "sound_work_settings_section"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_14

    .line 135
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->shouldShowRingtoneSettings()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public synthetic lambda$updateWorkPreferences$0$WorkSoundPreferenceController(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 222
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 223
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mParent:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$UnifyWorkDialogFragment;->show(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_f
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->disableWorkSync()V

    const/4 p0, 0x1

    return p0
.end method

.method public onManagedProfileAdded(I)V
    .registers 4

    .line 304
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_b

    .line 305
    iput p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 306
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateWorkPreferences()V

    :cond_b
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .registers 3

    .line 311
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    if-ne v0, p1, :cond_11

    .line 312
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 313
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateWorkPreferences()V

    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 151
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "work_ringtone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_f

    move p2, v0

    goto :goto_2a

    .line 153
    :cond_f
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "work_notification_ringtone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x2

    goto :goto_2a

    .line 155
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "work_alarm_ringtone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    const/4 p2, 0x4

    .line 161
    :goto_2a
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_35
    return v0
.end method

.method public onResume()V
    .registers 4

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->mManagedProfileId:I

    .line 119
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->updateWorkPreferences()V

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "sound_work_settings_section"

    .line 170
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "work_use_personal_sounds"

    .line 171
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "work_notification_ringtone"

    .line 172
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "work_ringtone"

    .line 173
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "work_alarm_ringtone"

    .line 174
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
