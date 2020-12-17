.class public Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;
.super Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.source "CdmaSubscriptionPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TYPE_NV:Ljava/lang/String; = "NV"

.field private static final TYPE_RUIM:Ljava/lang/String; = "RUIM"


# instance fields
.field mPreference:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method deviceSupportsNvAndRuim()Z
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string/jumbo p0, "ril.subscription.types"

    .line 81
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_37

    const-string v0, ","

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_19
    if-ge v3, v0, :cond_39

    aget-object v6, p0, v3

    .line 89
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NV"

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v4, v1

    goto :goto_34

    :cond_2b
    const-string v7, "RUIM"

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    move v5, v1

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_37
    move v4, v2

    move v5, v4

    :cond_39
    if-eqz v4, :cond_3e

    if-eqz v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    return v1
.end method

.method public getAvailabilityStatus(I)I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->deviceSupportsNvAndRuim()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    const/4 p0, 0x2

    :goto_11
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 67
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->setCdmaSubscriptionMode(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "subscription_mode"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 4

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 56
    check-cast p1, Landroidx/preference/ListPreference;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "subscription_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_29

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
