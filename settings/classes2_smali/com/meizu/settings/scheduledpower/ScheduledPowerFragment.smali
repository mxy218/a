.class public Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ScheduledPowerFragment.java"

# interfaces
.implements Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field private static final OFF_SWITCH_URI:Landroid/net/Uri;

.field private static final ON_SWITCH_URI:Landroid/net/Uri;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private isOffOpened:Z

.field private isOnOpened:Z

.field private mContext:Landroid/content/Context;

.field private mIsTimePickShow:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private offDays:I

.field private offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

.field private offHour:I

.field private offMin:I

.field private offSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private offTimePreference:Landroid/preference/Preference;

.field private onDays:I

.field private onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

.field private onHour:I

.field private onMin:I

.field private onSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private onTimePreference:Landroid/preference/Preference;

.field private pickerType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mz_scheduled_power_on"

    .line 54
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->ON_SWITCH_URI:Landroid/net/Uri;

    const-string v0, "mz_scheduled_power_off"

    .line 56
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->OFF_SWITCH_URI:Landroid/net/Uri;

    .line 322
    new-instance v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$2;

    invoke-direct {v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    .line 76
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    .line 78
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    .line 81
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mIsTimePickShow:Z

    .line 82
    new-instance v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$1;-><init>(Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->updateStates()V

    return-void
.end method

.method private setPowerOffState(Z)V
    .registers 5

    .line 296
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offHour:I

    iget v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offMin:I

    iget v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDays:I

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 299
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->am:Landroid/app/AlarmManager;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOffTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    return-void
.end method

.method private setPowerOnState(Z)V
    .registers 5

    .line 290
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onHour:I

    iget v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onMin:I

    iget v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDays:I

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 292
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->am:Landroid/app/AlarmManager;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOnTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    return-void
.end method

.method private updateStates()V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_scheduled_power_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_scheduled_power_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2b

    move v1, v2

    :cond_2b
    iput-boolean v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public initTimes(Landroid/content/Context;I)Ljava/util/Calendar;
    .registers 9

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-nez p2, :cond_30

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/16 v4, 0x17

    const-string v5, "mz_scheduled_power_off_h"

    invoke-static {p2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offHour:I

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mz_scheduled_power_off_m"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offMin:I

    .line 276
    iget p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offHour:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offMin:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_56

    :cond_30
    const/4 v4, 0x1

    if-ne p2, v4, :cond_56

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v4, 0x7

    const-string v5, "mz_scheduled_power_on_h"

    invoke-static {p2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onHour:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mz_scheduled_power_on_m"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onMin:I

    .line 283
    iget p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onHour:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 284
    iget p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onMin:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    :cond_56
    :goto_56
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 90
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600d8

    .line 91
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    .line 93
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->initTimes(Landroid/content/Context;I)Ljava/util/Calendar;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->am:Landroid/app/AlarmManager;

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "scheduled_power_off"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 98
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x7f

    const-string v3, "mz_scheduled_power_off_days"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDays:I

    const-string v1, "power_off_repeat"

    .line 101
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/ScheduledPreference;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    .line 102
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    iget v3, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDays:I

    invoke-virtual {v1, v3}, Lcom/meizu/settings/widget/ScheduledPreference;->setSelectedDays(I)V

    .line 103
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    invoke-virtual {v1, p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setOnItemSelectedChangedListener(Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;)V

    .line 104
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "power_off_time"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offTimePreference:Landroid/preference/Preference;

    .line 105
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->initTimes(Landroid/content/Context;I)Ljava/util/Calendar;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "scheduled_power_on"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 110
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mz_scheduled_power_on_days"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDays:I

    const-string v1, "power_on_repeat"

    .line 113
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/ScheduledPreference;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    .line 114
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    iget v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDays:I

    invoke-virtual {v1, v2}, Lcom/meizu/settings/widget/ScheduledPreference;->setSelectedDays(I)V

    .line 115
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    invoke-virtual {v1, p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setOnItemSelectedChangedListener(Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;)V

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "power_on_time"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onTimePreference:Landroid/preference/Preference;

    .line 117
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mIsTimePickShow:Z

    return-void
.end method

.method public onItemSelectedChanged(Lcom/meizu/settings/widget/ScheduledPreference;I)V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    if-ne p1, v0, :cond_17

    .line 310
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mz_scheduled_power_on_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDays:I

    .line 313
    iget-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->setPowerOnState(Z)V

    goto :goto_2d

    .line 314
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    if-ne p1, v0, :cond_2d

    .line 315
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mz_scheduled_power_off_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDays:I

    .line 318
    iget-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->setPowerOffState(Z)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 145
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 167
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_1f

    .line 169
    iput-boolean p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    .line 170
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 172
    iget-boolean p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    const-string v0, "mz_scheduled_power_off"

    .line 171
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    iget-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->setPowerOffState(Z)V

    goto :goto_37

    .line 175
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_37

    .line 176
    iput-boolean p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 178
    iget-boolean p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    const-string v0, "mz_scheduled_power_on"

    .line 177
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-boolean p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->setPowerOnState(Z)V

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScheduledPowerFragment"

    .line 152
    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offTimePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1c

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    .line 157
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    invoke-virtual {p0, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->showDialog(I)V

    goto :goto_28

    .line 158
    :cond_1c
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onTimePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_28

    const/4 v0, 0x1

    .line 159
    iput v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    .line 160
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    invoke-virtual {p0, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->showDialog(I)V

    .line 162
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 131
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->updateStates()V

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->ON_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->OFF_SWITCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    if-eqz v1, :cond_31

    .line 138
    invoke-virtual {v0}, Lcom/meizu/settings/widget/ScheduledPreference;->onResume()V

    .line 139
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onDaysPreference:Lcom/meizu/settings/widget/ScheduledPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/ScheduledPreference;->onResume()V

    :cond_31
    return-void
.end method

.method public onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V
    .registers 9

    .line 220
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 221
    iget v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->pickerType:I

    const/4 v1, 0x0

    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6f

    .line 222
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mz_scheduled_power_on_days"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    invoke-static {p2, p3, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 225
    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->isTimeLegal(Landroid/content/Context;III)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 227
    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onHour:I

    .line 228
    iput p3, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onMin:I

    .line 229
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mz_scheduled_power_on_h"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mz_scheduled_power_on_m"

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->am:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-boolean p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOnOpened:Z

    invoke-static {p1, p2, v0, v1, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOnTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    goto :goto_cf

    .line 237
    :cond_5b
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->initTimes(Landroid/content/Context;I)Ljava/util/Calendar;

    move-result-object p2

    .line 238
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onTimePreference:Landroid/preference/Preference;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_cf

    .line 241
    :cond_6f
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, v3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->isTimeLegal(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 243
    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_scheduled_power_off_days"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 245
    invoke-static {p2, p3, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 246
    iput p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offHour:I

    .line 247
    iput p3, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offMin:I

    .line 248
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mz_scheduled_power_off_h"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mz_scheduled_power_off_m"

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->am:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-boolean p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->isOffOpened:Z

    invoke-static {p1, p2, v0, v1, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOffTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    goto :goto_cf

    .line 256
    :cond_bc
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->initTimes(Landroid/content/Context;I)Ljava/util/Calendar;

    move-result-object p2

    .line 257
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offTimePreference:Landroid/preference/Preference;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_cf
    return-void
.end method

.method protected showDialog(I)V
    .registers 15

    .line 185
    iget-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mIsTimePickShow:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eqz p1, :cond_23

    if-eq p1, v0, :cond_b

    goto :goto_3a

    .line 202
    :cond_b
    new-instance p1, Lcom/meizu/common/widget/TimePickerDialog;

    iget-object v2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onHour:I

    iget v5, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->onMin:I

    .line 207
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 208
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3a

    .line 191
    :cond_23
    new-instance p1, Lcom/meizu/common/widget/TimePickerDialog;

    iget-object v8, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offHour:I

    iget v11, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->offMin:I

    .line 196
    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    move-object v7, p1

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 197
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 198
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 215
    :goto_3a
    iput-boolean v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->mIsTimePickShow:Z

    return-void
.end method
