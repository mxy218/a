.class public Lcom/meizu/settings/widget/ScheduledPreference;
.super Landroid/preference/Preference;
.source "ScheduledPreference.java"

# interfaces
.implements Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnItemSelectedChangedListener:Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;

.field private picker:Lcom/meizu/common/widget/WeekdayPicker;

.field private repeatDays:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/ScheduledPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0291

    .line 35
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/16 p1, 0x7f

    .line 36
    iput p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->repeatDays:I

    return-void
.end method

.method private setFirstDayOfWeek()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/widget/ScheduledPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "week_start"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 78
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    goto :goto_25

    .line 81
    :cond_1d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 84
    :cond_25
    :goto_25
    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/ScheduledPreference;->setFirstDayOfWeek(I)V

    return-void
.end method


# virtual methods
.method public OnSelectChanged(I)V
    .registers 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSelectChanged days:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScheduledPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->repeatDays:I

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/widget/ScheduledPreference;->mOnItemSelectedChangedListener:Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;

    if-eqz v0, :cond_1f

    .line 92
    invoke-interface {v0, p0, p1}, Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;->onItemSelectedChanged(Lcom/meizu/settings/widget/ScheduledPreference;I)V

    :cond_1f
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 3

    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a055f

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/WeekdayPicker;

    iput-object p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->picker:Lcom/meizu/common/widget/WeekdayPicker;

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->picker:Lcom/meizu/common/widget/WeekdayPicker;

    iget v0, p0, Lcom/meizu/settings/widget/ScheduledPreference;->repeatDays:I

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/WeekdayPicker;->setSelectedDays(I)V

    .line 44
    invoke-direct {p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setFirstDayOfWeek()V

    .line 45
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_25

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/ScheduledPreference;->picker:Lcom/meizu/common/widget/WeekdayPicker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_2a

    .line 48
    :cond_25
    iget-object p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->picker:Lcom/meizu/common/widget/WeekdayPicker;

    invoke-virtual {p1, p0}, Lcom/meizu/common/widget/WeekdayPicker;->setOnSelectChangedListener(Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;)V

    :goto_2a
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/meizu/settings/widget/ScheduledPreference;->setFirstDayOfWeek()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/widget/ScheduledPreference;->picker:Lcom/meizu/common/widget/WeekdayPicker;

    if-eqz v0, :cond_a

    .line 63
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/WeekdayPicker;->setFirstDayOfWeek(I)V

    .line 64
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_a
    return-void
.end method

.method public setOnItemSelectedChangedListener(Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->mOnItemSelectedChangedListener:Lcom/meizu/settings/widget/ScheduledPreference$OnItemSelectedChangedListener;

    return-void
.end method

.method public setSelectedDays(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/meizu/settings/widget/ScheduledPreference;->repeatDays:I

    .line 54
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method
