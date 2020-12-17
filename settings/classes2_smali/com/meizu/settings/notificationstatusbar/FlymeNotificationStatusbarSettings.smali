.class public Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeNotificationStatusbarSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBubbleNotification:Lcom/meizu/common/preference/SwitchPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLockscreenLunarCalender:Lcom/meizu/common/preference/SwitchPreference;

.field private mLockscreenMusic:Lcom/meizu/common/preference/SwitchPreference;

.field private mQuickReply:Lcom/meizu/common/preference/SwitchPreference;

.field private mSupportFaceRecogniton:Z

.field private mToggleAlarmPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

.field private mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleHDPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleHeadsetPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

.field private mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

.field private mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

.field private mTogglePullDownNotificationbar:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleShowsNotificationOnLauncher:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleVolumePreference:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 376
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings$1;

    invoke-direct {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/meizu/settings/widget/RestrictedListPreference;I)V
    .registers 4

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 259
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 261
    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/RestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private initPreference()V
    .registers 8

    const-string v0, "lockscreen_notification"

    .line 111
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedListPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "show_notification_content"

    .line 113
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "wakeup_screen_show_notification"

    .line 114
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    .line 116
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->supportFaceRecognition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    const-string v0, "list_show_notification_content"

    .line 117
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    const-string v0, "toggle_status_bar_tint"

    .line 119
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "toggle_current_network_speed"

    .line 120
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "toggle_volume"

    .line 121
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleVolumePreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "toggle_alarm"

    .line 122
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleAlarmPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "toggle_headset"

    .line 123
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHeadsetPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "toggle_hd"

    .line 124
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHDPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "statusbar_battery_percent"

    .line 125
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    .line 126
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "lockscreen_pull_down_notibar"

    .line 128
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mTogglePullDownNotificationbar:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "show_notification_on_launcher"

    .line 129
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleShowsNotificationOnLauncher:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "bubble_notification"

    .line 130
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mBubbleNotification:Lcom/meizu/common/preference/SwitchPreference;

    .line 131
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mBubbleNotification:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "mz_bubble_notification"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_b2

    move v2, v3

    goto :goto_b3

    :cond_b2
    move v2, v4

    :goto_b3
    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "quick_reply"

    .line 133
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mQuickReply:Lcom/meizu/common/preference/SwitchPreference;

    .line 134
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mQuickReply:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mz_force_quick_reply"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_d0

    move v2, v3

    goto :goto_d1

    :cond_d0
    move v2, v4

    :goto_d1
    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "lockscreen_show_lunar_calender"

    .line 137
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenLunarCalender:Lcom/meizu/common/preference/SwitchPreference;

    .line 138
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenLunarCalender:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_lunar_calender"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_ee

    move v2, v3

    goto :goto_ef

    :cond_ee
    move v2, v4

    :goto_ef
    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "lockscreen_show_music_key"

    .line 140
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenMusic:Lcom/meizu/common/preference/SwitchPreference;

    .line 141
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenMusic:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_music"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10c

    move v2, v3

    goto :goto_10d

    :cond_10c
    move v2, v4

    :goto_10d
    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_137

    .line 148
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_157

    .line 151
    :cond_137
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    iget-boolean v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    if-eqz v2, :cond_14e

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_157

    .line 156
    :cond_14e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :goto_157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v2

    if-eqz v2, :cond_184

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_184

    .line 161
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_17f

    move v5, v3

    goto :goto_180

    :cond_17f
    move v5, v4

    :goto_180
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_19b

    .line 165
    :cond_184
    iget-boolean v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    if-eqz v2, :cond_192

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_19b

    .line 168
    :cond_192
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :goto_19b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 174
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_wakeup_screen"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1b5

    move v5, v3

    goto :goto_1b6

    :cond_1b5
    move v5, v4

    :goto_1b6
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1c3

    .line 177
    :cond_1ba
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_1c3
    iget-boolean v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    if-eqz v2, :cond_1d1

    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1da

    .line 184
    :cond_1d1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    :goto_1da
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_current_network_speed"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1f1

    move v5, v3

    goto :goto_1f2

    :cond_1f1
    move v5, v4

    :goto_1f2
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleVolumePreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_show_volume"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_203

    move v5, v3

    goto :goto_204

    :cond_203
    move v5, v4

    :goto_204
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleAlarmPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_show_alarm"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_215

    move v5, v3

    goto :goto_216

    :cond_215
    move v5, v4

    :goto_216
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 197
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHeadsetPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_show_headset"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_227

    move v5, v3

    goto :goto_228

    :cond_227
    move v5, v4

    :goto_228
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHDPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_show_hd"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_239

    move v5, v3

    goto :goto_23a

    :cond_239
    move v5, v4

    :goto_23a
    invoke-virtual {v2, v5}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 204
    invoke-static {}, Lcom/meizu/settings/MzCutoutHelper;->isCutoutScreen()Z

    move-result v2

    if-eqz v2, :cond_245

    const/4 v2, 0x2

    goto :goto_246

    :cond_245
    move v2, v3

    .line 205
    :goto_246
    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPreference: IS_FRINGE_DEVICE=false,def = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "FlymeNotificationStatusbarSettings"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mTogglePullDownNotificationbar:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_pull_notificationbar"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_28a

    move v2, v3

    goto :goto_28b

    :cond_28a
    move v2, v4

    :goto_28b
    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleShowsNotificationOnLauncher:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_shows_notification_on_launcher"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_29b

    goto :goto_29c

    :cond_29b
    move v3, v4

    :goto_29c
    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    .line 218
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mTogglePullDownNotificationbar:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    if-eqz v0, :cond_2c9

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2d2

    .line 224
    :cond_2c9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :goto_2d2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenMusic:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "lockscreen_category"

    .line 229
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_2e9
    const-string v0, "notificationbar_item_management"

    .line 233
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_319

    .line 238
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleShowsNotificationOnLauncher:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "app_notifications"

    .line 242
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_310

    const v2, 0x7f120f67

    .line 244
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 247
    :cond_310
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mQuickReply:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_319
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->checkNotificationFeaturesAndSetDisabled(Lcom/meizu/settings/widget/RestrictedListPreference;I)V

    .line 254
    invoke-direct {p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->updatePreferenceEnable(I)V

    return-void
.end method

.method private initValue()V
    .registers 2

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private updatePreferenceEnable(I)V
    .registers 6

    .line 435
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContentList:Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;

    if-eqz p1, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 437
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600c0

    .line 101
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 102
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->initValue()V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->initPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_28

    .line 347
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotification:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 350
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-direct {p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->updatePreferenceEnable(I)V

    return v1

    .line 353
    :cond_28
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_62

    .line 354
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleBatteryPercentPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: change percent，value = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FlymeNotificationStatusbarSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "statusbar_battery_percent"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_62
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 267
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleLockScreenShowNotificationContent:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_30

    .line 272
    iget-boolean v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mSupportFaceRecogniton:Z

    if-nez v3, :cond_12c

    .line 273
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 275
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    const-string v0, "lock_screen_allow_private_notifications"

    .line 273
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 277
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleNotificationWakeupScreen:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_45

    .line 278
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 280
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    const-string v0, "notification_wakeup_screen"

    .line 278
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 281
    :cond_45
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_4b

    goto/16 :goto_12c

    .line 285
    :cond_4b
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_60

    .line 286
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 288
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    const-string v0, "mz_current_network_speed"

    .line 286
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 290
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleVolumePreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_75

    .line 291
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 293
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    const-string v0, "mz_show_volume"

    .line 291
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 294
    :cond_75
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleAlarmPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_8a

    .line 295
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 297
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_82
    move v1, v2

    :goto_83
    const-string v0, "mz_show_alarm"

    .line 295
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 298
    :cond_8a
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHeadsetPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_9f

    .line 299
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 301
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_98

    :cond_97
    move v1, v2

    :goto_98
    const-string v0, "mz_show_headset"

    .line 299
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 302
    :cond_9f
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleHDPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_b4

    .line 303
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 305
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_ad

    :cond_ac
    move v1, v2

    :goto_ad
    const-string v0, "mz_show_hd"

    .line 303
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 316
    :cond_b4
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mTogglePullDownNotificationbar:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_c9

    .line 317
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 319
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c1

    goto :goto_c2

    :cond_c1
    move v1, v2

    :goto_c2
    const-string v0, "lockscreen_pull_notificationbar"

    .line 317
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_12c

    .line 320
    :cond_c9
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mToggleShowsNotificationOnLauncher:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_dd

    .line 321
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 323
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d6

    goto :goto_d7

    :cond_d6
    move v1, v2

    :goto_d7
    const-string v0, "mz_shows_notification_on_launcher"

    .line 321
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12c

    .line 324
    :cond_dd
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mBubbleNotification:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_f1

    .line 325
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 327
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_ea

    goto :goto_eb

    :cond_ea
    move v1, v2

    :goto_eb
    const-string v0, "mz_bubble_notification"

    .line 325
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12c

    .line 328
    :cond_f1
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mQuickReply:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_105

    .line 329
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 331
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_fe

    goto :goto_ff

    :cond_fe
    move v1, v2

    :goto_ff
    const-string v0, "mz_force_quick_reply"

    .line 329
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12c

    .line 332
    :cond_105
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenMusic:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_119

    .line 333
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 335
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_112

    goto :goto_113

    :cond_112
    move v1, v2

    :goto_113
    const-string v0, "lockscreen_music"

    .line 333
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12c

    .line 336
    :cond_119
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mLockscreenLunarCalender:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_12c

    .line 337
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 339
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_126

    goto :goto_127

    :cond_126
    move v1, v2

    :goto_127
    const-string v0, "lockscreen_lunar_calender"

    .line 337
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    :cond_12c
    :goto_12c
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 2

    .line 366
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 367
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "FlymeNotificationStatusbarSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 372
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 373
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "FlymeNotificationStatusbarSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method
