.class public abstract Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWifiMacAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final OFF:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mWifiMacAddress:Landroidx/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 56
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_mac_address"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .registers 1

    .line 78
    sget-object p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "wifi_mac_address"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected updateConnectivity()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 86
    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 87
    aget-object v0, v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 90
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_23

    .line 93
    :cond_1e
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_23
    return-void
.end method
