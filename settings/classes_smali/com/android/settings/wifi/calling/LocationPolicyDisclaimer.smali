.class Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "LocationPolicyDisclaimer.java"


# static fields
.field static final KEY_HAS_AGREED_LOCATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_location_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/DisclaimerItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getMessageId()I
    .registers 1

    const p0, 0x7f12182b

    return p0
.end method

.method protected getName()Ljava/lang/String;
    .registers 1

    const-string p0, "LocationPolicyDisclaimer"

    return-object p0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .registers 1

    const-string p0, "key_has_agreed_location_disclaimer"

    return-object p0
.end method

.method protected getTitleId()I
    .registers 1

    const p0, 0x7f12182c

    return p0
.end method

.method shouldShow()Z
    .registers 4

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "show_wfc_location_privacy_policy_bool"

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string/jumbo v0, "shouldShow: false due to carrier config is false."

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_15
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "shouldShow: false due to WFC is on as default."

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    .line 56
    :cond_24
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
