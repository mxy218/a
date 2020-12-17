.class public Lcom/meizu/settings/display/BluelightReductionFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "BluelightReductionFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

.field private mBluelightTimeConfigListPreference:Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

.field private mBluelightTypeConfigListPreference:Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

.field private mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Lcom/meizu/settings/display/BluelightReductionFragment$3;

    invoke-direct {v0}, Lcom/meizu/settings/display/BluelightReductionFragment$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/BluelightReductionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/meizu/settings/display/BluelightReductionFragment$1;

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/display/BluelightReductionFragment$1;-><init>(Lcom/meizu/settings/display/BluelightReductionFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BlueLightReductionPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/BluelightReductionFragment;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->disablePreferenceWhenSwitchReduction()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/display/BluelightReductionFragment;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeConfigListPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBluelightTimeConfigListPreference:Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTimeSelectPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BluelightTypeConfigListPreference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBluelightTypeConfigListPreference:Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    return-object p0
.end method

.method private disablePreferenceWhenSwitchReduction()V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/settings/display/BluelightReductionFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/BluelightReductionFragment$2;-><init>(Lcom/meizu/settings/display/BluelightReductionFragment;)V

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 100
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const p1, 0x7f16002c

    .line 104
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "enable_blue_light_reduction"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "time_config"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBluelightTimeConfigListPreference:Lcom/meizu/settings/display/BluelightTimeConfigListPreference;

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "bluelight_type_config"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBluelightTypeConfigListPreference:Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "time_start"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    .line 109
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "time_end"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    .line 110
    new-instance p1, Lcom/meizu/settings/display/TimeSelectLegal;

    invoke-direct {p1}, Lcom/meizu/settings/display/TimeSelectLegal;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/meizu/settings/display/TimeSelectLegal;->setStartTime(II)V

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->getMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/meizu/settings/display/TimeSelectLegal;->setEndTime(II)V

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->setTimeSelectLegal(Lcom/meizu/settings/display/TimeSelectLegal;)V

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/display/BluelightTimeSelectPreference;->setTimeSelectLegal(Lcom/meizu/settings/display/TimeSelectLegal;)V

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "blue_light_reduction_seekbar"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/BlueLightReductionPreference;

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-virtual {p1}, Lcom/meizu/settings/display/BlueLightReductionPreference;->registerDisplayConnnectListener()V

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "immediately_on_or_off"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "time_config_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "self_config_time_start_hour"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "self_config_time_start_minute"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "self_config_time_end_hour"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "self_config_time_end_minute"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "sunrise_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "sunset_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isSupportForestGreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 128
    iget-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "blue_reduction_config_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    :cond_123
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 157
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->unregisterDisplayConnnectListener()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, v0, :cond_20

    .line 166
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 167
    iget-object p2, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReduction(Landroid/content/Context;ZZ)V

    .line 168
    invoke-direct {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->disablePreferenceWhenSwitchReduction()V

    .line 169
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 170
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "enable_blue_light_reduction"

    const-string v0, "BluelightReductionFragment"

    .line 169
    invoke-virtual {p0, p2, v0, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .registers 4

    .line 136
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->setBlueligthReductionEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    .line 143
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mStartTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mEndTimeSelectPreference:Lcom/meizu/settings/display/BluelightTimeSelectPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isSupportForestGreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBluelightTypeConfigListPreference:Lcom/meizu/settings/display/BluelightTypeConfigListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_3f
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    const-string/jumbo v0, "persist.sys.enable.dc"

    const-string v2, "false"

    .line 151
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment;->mBlueLightReductionPreference:Lcom/meizu/settings/display/BlueLightReductionPreference;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
