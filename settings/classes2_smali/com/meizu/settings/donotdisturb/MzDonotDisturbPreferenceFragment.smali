.class public Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzDonotDisturbPreferenceFragment.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDndMode:I

.field private mDndPeriodPref:Landroid/preference/Preference;

.field private mDndPriority:Landroid/preference/Preference;

.field private mDoNotDisturb:Lcom/meizu/common/preference/SwitchPreference;

.field private mDoNotDisturbHint:Landroid/preference/Preference;

.field private mDoNotDisturbMode:Landroid/preference/ListPreference;

.field private mHeadsUpNotification:Lcom/meizu/common/preference/SwitchPreference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPrioritySettingsHelper:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

.field private mRootScreen:Landroid/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mWakeupBreathingLight:Lcom/meizu/common/preference/SwitchPreference;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 314
    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$1;

    invoke-direct {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$1;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mSettingsObserver:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateZenMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateWakeupBreathingLight()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateHeadsUpNotification()V

    return-void
.end method

.method private enableManualDoNotDisturb(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 212
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->startDoNotDisturb(Landroid/content/Context;)V

    goto :goto_d

    .line 214
    :cond_8
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->stopDoNotDisturb(Landroid/content/Context;)V

    :goto_d
    return-void
.end method

.method private initData()V
    .registers 3

    .line 86
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 89
    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mPrioritySettingsHelper:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string v0, "do_not_disturb_hint"

    .line 97
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbHint:Landroid/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbHint:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string v0, "do_not_disturb_switch"

    .line 99
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturb:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "do_not_disturb_period"

    .line 100
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndPeriodPref:Landroid/preference/Preference;

    const-string v0, "wakeup_breathing_light"

    .line 101
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mWakeupBreathingLight:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "dnd_mode"

    .line 103
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "dnd_priority_settings"

    .line 105
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndPriority:Landroid/preference/Preference;

    const-string v0, "dnd_heads_up_notificaion_setting"

    .line 106
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mHeadsUpNotification:Lcom/meizu/common/preference/SwitchPreference;

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mPrioritySettingsHelper:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->initPreferences(Landroid/preference/PreferenceScreen;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isSupportBreatheLight()Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "dnd_on_settings"

    .line 111
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mWakeupBreathingLight:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_71
    return-void
.end method

.method private updateDndPeriodPref()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndPeriodPref:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->isScheduleOnExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x7f120756

    goto :goto_11

    :cond_e
    const p0, 0x7f120755

    :goto_11
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateDoNotDisturbMode()V
    .registers 3

    .line 169
    iget v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHeadsUpNotification()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_do_not_disturb_heads_up_notification"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mHeadsUpNotification:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updatePrioritySettingsCategory()V
    .registers 4

    .line 231
    iget v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "dnd_priority_settings"

    if-eqz v0, :cond_1c

    .line 232
    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    .line 233
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndPriority:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2d

    :cond_1c
    if-nez v0, :cond_2d

    .line 235
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    .line 236
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 237
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mRootScreen:Landroid/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndPriority:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method private updateRuleInterruptionFilter()V
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    const-string v2, "mz_do_not_disturb_interruption_filter"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_15

    .line 247
    :cond_13
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :goto_15
    const-string v1, "MzDonotDisturbPreferenceFragment"

    if-eqz v0, :cond_25

    .line 249
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    const-string v0, "updateRuleInterruptionFilter manualRule"

    .line 250
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 255
    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->loadScheduleRules(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string p0, "updateRuleInterruptionFilter no schedule rules"

    .line 257
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    .line 262
    iget-object v3, v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    .line 263
    iget-object v2, v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 264
    iget v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    invoke-virtual {v2, v4}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    .line 265
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3, v2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRuleInterruptionFilter rule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ret = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_73
    return-void
.end method

.method private updateWakeupBreathingLight()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mWakeupBreathingLight:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateZenMode()V
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    iget v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mZenMode:I

    if-ne v0, v2, :cond_10

    return-void

    .line 151
    :cond_10
    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mZenMode:I

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturb:Lcom/meizu/common/preference/SwitchPreference;

    iget p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mZenMode:I

    if-eqz p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateZenModeConfig()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_do_not_disturb_interruption_filter"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    .line 163
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateDoNotDisturbMode()V

    .line 164
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updatePrioritySettingsCategory()V

    .line 165
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateDndPeriodPref()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600a1

    .line 80
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->initData()V

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->initPreference()V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 141
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mSettingsObserver:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturbMode:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 221
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDndMode:I

    .line 222
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateDoNotDisturbMode()V

    .line 223
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updatePrioritySettingsCategory()V

    .line 224
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateRuleInterruptionFilter()V

    .line 226
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mPrioritySettingsHelper:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MzDonotDisturbPreferenceFragment"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 196
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mWakeupBreathingLight:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_21

    .line 197
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 199
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const-string v0, "mz_do_not_disturb_wakeup_breath_light"

    .line 197
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_40

    .line 200
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mDoNotDisturb:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_2d

    .line 201
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->enableManualDoNotDisturb(Z)V

    goto :goto_40

    .line 202
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mHeadsUpNotification:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_40

    .line 203
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    const-string v0, "mz_do_not_disturb_heads_up_notification"

    .line 203
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :cond_40
    :goto_40
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mSettingsObserver:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->register()V

    .line 132
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateZenMode()V

    .line 133
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateZenModeConfig()V

    .line 134
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateWakeupBreathingLight()V

    .line 135
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->updateHeadsUpNotification()V

    .line 136
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mPrioritySettingsHelper:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 117
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 118
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "MzDonotDisturbPreferenceFragment"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 123
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "MzDonotDisturbPreferenceFragment"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method
