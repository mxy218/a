.class public abstract Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "CdmaBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;
    }
.end annotation


# instance fields
.field private mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mPreferenceManager:Landroidx/preference/PreferenceManager;

.field protected mSubId:I

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 53
    new-instance p1, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p1, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    if-eqz v0, :cond_1a

    .line 88
    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    iget p0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->setSubId(I)V

    :cond_1a
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x2

    :goto_b
    return p0
.end method

.method public init(I)V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    return-void
.end method

.method public init(Landroidx/preference/PreferenceManager;I)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 75
    iput p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 76
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method
