.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_notifications"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 220
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .registers 3

    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v8, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const-string/jumbo v1, "usagestats"

    .line 103
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v4

    const-class v1, Landroid/os/UserManager;

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/UserManager;

    move-object v1, v8

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V

    .line 101
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;

    const-string p2, "lock_screen_notifications"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance p1, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 3
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

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 95
    :goto_c
    invoke-static {p1, v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "ConfigNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x151

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f16003d

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_e

    return-void

    :cond_e
    if-eqz v0, :cond_2d

    const-string v1, ":settings:fragment_args_key"

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "configure_notifications_advanced"

    .line 130
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const v0, 0x7fffffff

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 133
    invoke-virtual {p0, p1}, Landroidx/preference/MzPreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    :cond_2d
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 5

    .line 140
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_2d

    .line 141
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 144
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 143
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 150
    :cond_2d
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_11

    .line 165
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
