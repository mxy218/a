.class public Lcom/meizu/settings/display/BluelightStartTimeSelectPreference;
.super Lcom/meizu/settings/display/BluelightTimeSelectPreference;
.source "BluelightStartTimeSelectPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightUtils;->getStartHour(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    .line 17
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightUtils;->getStartMinute(Landroid/content/ContentResolver;)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    .line 18
    iget p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    iget v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    invoke-static {p2, v0, p1}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    return p0
.end method

.method public getMinute()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    return p0
.end method

.method public handlePreferenceClick(II)V
    .registers 5

    .line 23
    iget v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    if-ne p2, v0, :cond_9

    return-void

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "self_config_time_start_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "self_config_time_start_minute"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    iput p1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    .line 30
    iput p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    .line 31
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mHour:I

    iget v0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mMinute:I

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->getEndHour(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object p0, p0, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getEndMinute(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-static {p1, p2, v0, v1, p0}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;IIII)V

    return-void
.end method
