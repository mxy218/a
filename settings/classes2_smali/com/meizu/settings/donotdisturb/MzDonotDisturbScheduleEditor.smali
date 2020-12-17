.class public Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzDonotDisturbScheduleEditor.java"

# interfaces
.implements Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;
.implements Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddScheulde:Z

.field private mDateFormat:Ljava/text/DateFormat;

.field private mEndTimeHour:I

.field private mEndTimeMinute:I

.field private mEndTimePref:Landroid/preference/Preference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRepeatDays:I

.field private mRepeateDaysPref:Lcom/meizu/settings/widget/ScheduledPreference;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mRuleId:Ljava/lang/String;

.field private mSaveButton:Lflyme/support/v7/app/ActionBar$ControlButton;

.field private mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mSetStartTime:Z

.field private mStartTimeHour:I

.field private mStartTimeMinute:I

.field private mStartTimePref:Landroid/preference/Preference;

.field private mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mAddScheulde:Z

    .line 56
    iput-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSetStartTime:Z

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;Lflyme/support/v7/app/ActionBar$ControlButton;)Lflyme/support/v7/app/ActionBar$ControlButton;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSaveButton:Lflyme/support/v7/app/ActionBar$ControlButton;

    return-object p1
.end method

.method private buildEndTimeSummary()Ljava/lang/String;
    .registers 8

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    iget v5, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    iget v5, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    int-to-long v5, v5

    mul-long/2addr v5, v3

    iget v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    int-to-long v3, v3

    add-long/2addr v5, v3

    cmp-long v1, v1, v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    const/16 v4, 0xb

    .line 151
    iget v5, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 152
    iget v5, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 153
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_44

    const v1, 0x7f121a80

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 155
    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_44
    return-object v0
.end method

.method private buildStartTimeSummary()Ljava/lang/String;
    .registers 4

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 141
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelSetTimeDialog()V
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    :cond_12
    return-void
.end method

.method private getScheduleInfo(Landroid/app/AutomaticZenRule;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p0

    return-object p0
.end method

.method private initActionBar()V
    .registers 4

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 168
    instance-of v1, v0, Lflyme/support/v7/app/AppCompatActivity;

    if-nez v1, :cond_b

    goto :goto_2f

    .line 172
    :cond_b
    check-cast v0, Lflyme/support/v7/app/AppCompatActivity;

    .line 173
    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 174
    iget-boolean v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mAddScheulde:Z

    if-eqz v1, :cond_19

    const v1, 0x7f120741

    goto :goto_1c

    :cond_19
    const v1, 0x7f120743

    :goto_1c
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 177
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x1

    .line 178
    new-instance v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;)V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowControlTitleBar(ZLflyme/support/v7/app/ActionBar$ControlTitleBarCallback;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private initPreference()V
    .registers 3

    const v0, 0x7f1600a0

    .line 97
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "start_time"

    .line 98
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimePref:Landroid/preference/Preference;

    const-string v0, "end_time"

    .line 99
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimePref:Landroid/preference/Preference;

    const-string v0, "do_not_disturb_repeat_days"

    .line 100
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/ScheduledPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeateDaysPref:Lcom/meizu/settings/widget/ScheduledPreference;

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeateDaysPref:Lcom/meizu/settings/widget/ScheduledPreference;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setOnItemSelectedChangedListener(Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;)V

    const/16 v0, 0x17

    .line 103
    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    const/4 v1, 0x7

    .line 105
    iput v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    .line 106
    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    const/16 v0, 0x7f

    .line 107
    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->getScheduleInfo(Landroid/app/AutomaticZenRule;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_59

    .line 110
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    .line 111
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iput v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    .line 112
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    .line 113
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iput v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    .line 114
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->repeatDayToBinary([I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    .line 116
    :cond_59
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->buildStartTimeSummary()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->buildEndTimeSummary()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeateDaysPref:Lcom/meizu/settings/widget/ScheduledPreference;

    iget p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setSelectedDays(I)V

    return-void
.end method

.method private persistExistSchedule()V
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->repeatDayToBinary([I)I

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    const-string v4, "MzDonotDisturbScheduleEditor"

    if-ne v2, v3, :cond_2e

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    if-ne v2, v3, :cond_2e

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    if-ne v2, v3, :cond_2e

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    if-ne v1, v2, :cond_2e

    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    if-ne v0, v1, :cond_2e

    const-string p0, "persistExistSchedule no change"

    .line 318
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 322
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 323
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 324
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 325
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->binaryToRepeatDay(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 327
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mScheduleInfo:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRuleId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistExistSchedule rule = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ret = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private persistNewSchedule()V
    .registers 11

    .line 287
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 288
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->binaryToRepeatDay(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 289
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 290
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 291
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 292
    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 294
    new-instance v1, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 295
    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    const-string v2, "com.android.settings"

    .line 296
    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 297
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 298
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 299
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, v1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mz_do_not_disturb_interruption_filter"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 305
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v7, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 307
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistNewSchedule id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rule = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MzDonotDisturbScheduleEditor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private persistSchedule()V
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mAddScheulde:Z

    if-eqz v0, :cond_8

    .line 279
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->persistNewSchedule()V

    goto :goto_b

    .line 281
    :cond_8
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->persistExistSchedule()V

    .line 283
    :goto_b
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showSetTimeDialog(II)V
    .registers 10

    .line 211
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->cancelSetTimeDialog()V

    .line 212
    new-instance v6, Lcom/meizu/common/widget/TimePickerDialog;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    .line 213
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v6, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    .line 214
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01d0

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a075f

    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 218
    iget-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSetStartTime:Z

    if-eqz v0, :cond_39

    const v0, 0x7f120762

    goto :goto_3c

    :cond_39
    const v0, 0x7f120761

    .line 220
    :goto_3c
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 222
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mTimePickerDialog:Lcom/meizu/common/widget/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 161
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "MzDonotDisturbScheduleEditor"

    const-string v0, "onActivityCreated"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->initActionBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 73
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MzDonotDisturbScheduleEditor"

    const-string v0, "onCreate"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mDateFormat:Ljava/text/DateFormat;

    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v0, "args null"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_35
    const-string v1, "extra_add_schedule"

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mAddScheulde:Z

    const-string v1, "extra_rule"

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    iput-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    const-string v1, "extra_rule_id"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRuleId:Ljava/lang/String;

    .line 88
    iget-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mAddScheulde:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRuleId:Ljava/lang/String;

    if-nez v0, :cond_66

    :cond_5b
    const-string v0, "edit schedule null"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 93
    :cond_66
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->initPreference()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->cancelSetTimeDialog()V

    .line 126
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onItemSelectedChanged(Lcom/meizu/settings/widget/ScheduledPreference;I)V
    .registers 3

    .line 253
    iput p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    .line 254
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSaveButton:Lflyme/support/v7/app/ActionBar$ControlButton;

    if-eqz p1, :cond_10

    .line 255
    iget p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mRepeatDays:I

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-interface {p1, p0}, Lflyme/support/v7/app/ActionBar$ControlButton;->setEnabled(Z)V

    .line 257
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onItemSelectedChanged day = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MzDonotDisturbScheduleEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MzDonotDisturbScheduleEditor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x102002c

    if-eq v0, p1, :cond_2d

    const p1, 0x7f120741

    if-eq v0, p1, :cond_29

    goto :goto_32

    .line 269
    :cond_29
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->persistSchedule()V

    goto :goto_32

    .line 266
    :cond_2d
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 200
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSetStartTime:Z

    .line 202
    iget v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->showSetTimeDialog(II)V

    goto :goto_2d

    .line 203
    :cond_17
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSetStartTime:Z

    .line 205
    iget v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    iget v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->showSetTimeDialog(II)V

    .line 207
    :cond_2d
    :goto_2d
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V
    .registers 4

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p0, "MzDonotDisturbScheduleEditor"

    const-string p1, "onTimeSet acitivty null"

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_e
    iget-boolean p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mSetStartTime:Z

    if-eqz p1, :cond_17

    .line 239
    iput p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeHour:I

    .line 240
    iput p3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimeMinute:I

    goto :goto_1b

    .line 242
    :cond_17
    iput p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeHour:I

    .line 243
    iput p3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimeMinute:I

    .line 245
    :goto_1b
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->buildStartTimeSummary()Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mStartTimePref:Landroid/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->buildEndTimeSummary()Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->mEndTimePref:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
