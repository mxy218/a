.class Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_DURATION_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/AbstractZenModePreferenceController;Landroidx/preference/Preference;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    .line 134
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 125
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_duration"

    .line 128
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 135
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 150
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_1d

    .line 151
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 152
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 153
    :cond_1d
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 154
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenModeBackend;->updateZenMode()V

    .line 155
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_34

    .line 156
    invoke-virtual {p1, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 158
    :cond_34
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_3b
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .registers 2

    .line 145
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
