.class public Lcom/android/settings/network/telephony/DataUsagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DataUsagePreferenceController.java"


# instance fields
.field private mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field private mIntent:Landroid/content/Intent;

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    goto :goto_6

    :cond_5
    const/4 p0, 0x1

    :goto_6
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public init(I)V
    .registers 4

    .line 85
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 87
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3e

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    .line 90
    new-instance p1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 91
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->setSubscriptionId(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3e
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 9

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 66
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_24

    .line 71
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    :cond_24
    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 75
    :goto_2c
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_50

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120655

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v5, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 79
    invoke-static {v0, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object p0, v4, v2

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_50
    return-void
.end method
