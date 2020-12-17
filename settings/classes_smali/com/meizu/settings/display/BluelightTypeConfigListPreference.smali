.class public Lcom/meizu/settings/display/BluelightTypeConfigListPreference;
.super Landroid/preference/ListPreference;
.source "BluelightTypeConfigListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEntriesValues:[Ljava/lang/CharSequence;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "0"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-string v1, "1"

    aput-object v1, p2, v0

    .line 23
    iput-object p2, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mEntriesValues:[Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 32
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    .line 33
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mEntriesValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->refresh()V

    .line 35
    invoke-virtual {p0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "blue_reduction_config_type"

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    const/4 v2, 0x1

    if-eq p1, v2, :cond_15

    goto :goto_20

    .line 46
    :cond_15
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_20

    .line 43
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    :goto_20
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluelightTypeConfigListPreference"

    const-string v2, "bluelight_type_config"

    invoke-virtual {p1, v2, v0, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPreferenceChange: bluelight_config_type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public refresh()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 58
    iget-object v1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->getBlueTypeAmberEntry(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/display/BluelightUtils;->getBlueTypeAppleGreenEntry(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getBlueLightConfigType(Landroid/content/Context;)I

    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
