.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private mDayDialog:Landroid/app/AlertDialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroidx/preference/Preference;

.field private mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroidx/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method private showDaysDialog()V
    .registers 5

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121abf

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12077c

    const/4 v2, 0x0

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateDays()V
    .registers 10

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_60

    .line 154
    array-length v1, v0

    if-lez v1, :cond_60

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 157
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 158
    :goto_18
    array-length v6, v3

    if-ge v5, v6, :cond_4f

    .line 159
    aget v6, v3, v5

    move v7, v4

    .line 160
    :goto_1e
    array-length v8, v0

    if-ge v7, v8, :cond_4c

    .line 161
    aget v8, v0, v7

    if-ne v6, v8, :cond_49

    const/4 v7, 0x7

    .line 162
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3b

    .line 164
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v7, 0x7f121578

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_3b
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 171
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_60

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    .line 177
    :cond_60
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const v1, 0x7f121ac1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private updateEndSummary()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v1, v2

    .line 183
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    if-lt v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    if-eqz v1, :cond_1b

    const v0, 0x7f121a80

    .line 186
    :cond_1b
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 201
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/MzPreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 202
    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 203
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/MzPreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 204
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 205
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 206
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x90

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f16012f

    return p0
.end method

.method protected onCreateInternal()V
    .registers 5

    .line 83
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "days"

    .line 85
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 97
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "start_time"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121ad9

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 119
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v2, 0x7f121a7f

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "exit_at_alarm"

    .line 140
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 219
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroid/app/AlertDialog;

    :cond_15
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .registers 2

    if-eqz p1, :cond_b

    .line 71
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 72
    :goto_c
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 73
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected updateControlsInternal()V
    .registers 4

    .line 190
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    return-void
.end method
