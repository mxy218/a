.class public Lcom/meizu/settings/display/BluelightTimeSelectPreference;
.super Landroid/preference/Preference;
.source "BluelightTimeSelectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mHour:I

.field protected mMinute:I

.field protected mTimeSelectLegal:Lcom/meizu/settings/display/TimeSelectLegal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "alarm"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mAlarmManager:Landroid/app/AlarmManager;

    .line 33
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMinute()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceClick(II)V
    .registers 3

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8

    .line 39
    new-instance p1, Lcom/meizu/common/widget/TimePickerDialog;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getHour()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V
    .registers 4

    .line 63
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mTimeSelectLegal:Lcom/meizu/settings/display/TimeSelectLegal;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2, p3, p0}, Lcom/meizu/settings/display/TimeSelectLegal;->isValidated(IILcom/meizu/settings/display/BluelightTimeSelectPreference;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->handlePreferenceClick(II)V

    .line 65
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 67
    :cond_19
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12075d

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    :goto_23
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 4

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mTimeSelectLegal:Lcom/meizu/settings/display/TimeSelectLegal;

    if-eqz p1, :cond_e

    .line 88
    iget v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    iget v1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/meizu/settings/display/TimeSelectLegal;->setNewTime(IILcom/meizu/settings/display/BluelightTimeSelectPreference;)V

    :cond_e
    return-void
.end method

.method public setTimeSelectLegal(Lcom/meizu/settings/display/TimeSelectLegal;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mTimeSelectLegal:Lcom/meizu/settings/display/TimeSelectLegal;

    return-void
.end method
