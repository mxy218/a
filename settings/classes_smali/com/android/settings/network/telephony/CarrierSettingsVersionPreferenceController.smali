.class public Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CarrierSettingsVersionPreferenceController.java"


# instance fields
.field private mManager:Landroid/telephony/CarrierConfigManager;

.field private mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mManager:Landroid/telephony/CarrierConfigManager;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const-string v0, "carrier_config_version_string"

    .line 47
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    return-void
.end method
