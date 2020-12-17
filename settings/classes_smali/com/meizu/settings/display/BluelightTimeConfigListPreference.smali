.class public Lcom/meizu/settings/display/BluelightTimeConfigListPreference;
.super Landroid/preference/ListPreference;
.source "BluelightTimeConfigListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEntriesValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array v0, p2, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x2

    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mEntriesValues:[Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 30
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContext:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mEntriesValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-array p1, p2, [Ljava/lang/CharSequence;

    .line 32
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigTypeCloseSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p2}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigTypeTwilightSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigTypeCustomTimeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, p1, v3

    .line 32
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->refresh()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 40
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo v0, "time_config_type"

    .line 40
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public refresh()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
