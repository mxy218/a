.class public Lcom/android/settings/network/telephony/ApnPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "ApnPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;
    }
.end annotation


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p2, Landroid/telephony/CarrierConfigManager;

    invoke-direct {p2, p1}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 56
    new-instance p1, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;-><init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    const-string/jumbo v1, "show_apn_setting_cdma_bool"

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    .line 65
    :goto_1e
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_32

    if-eqz v0, :cond_32

    const-string p0, "apn_expand_bool"

    .line 67
    invoke-virtual {v0, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    move p0, v2

    goto :goto_33

    :cond_32
    move p0, v3

    :goto_33
    if-eqz v0, :cond_3f

    const-string p1, "hide_carrier_network_settings_bool"

    .line 69
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :cond_3f
    :goto_3f
    if-nez v2, :cond_46

    if-nez v1, :cond_47

    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x2

    :cond_47
    :goto_47
    return v3
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 5

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APN_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, ":settings:show_fragment_as_subsetting"

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-string/jumbo v2, "sub_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public init(I)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isDpcApnEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 98
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 96
    :goto_17
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
