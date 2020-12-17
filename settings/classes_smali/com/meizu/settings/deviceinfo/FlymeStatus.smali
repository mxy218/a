.class public Lcom/meizu/settings/deviceinfo/FlymeStatus;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeStatus.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 78
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeStatus$3;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 132
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeStatus$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 407
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeStatus$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$5;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/preference/Preference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/preference/Preference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeStatus;)Landroid/os/Handler;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->initSimStatusPreference()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x3c

    .line 321
    rem-long v2, p1, v0

    long-to-int v2, v2

    .line 322
    div-long v3, p1, v0

    rem-long/2addr v3, v0

    long-to-int v0, v3

    const-wide/16 v3, 0xe10

    .line 323
    div-long/2addr p1, v3

    long-to-int p1, p1

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->pad(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 270
    :cond_4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    return-object p0

    .line 274
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 276
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 279
    :cond_37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .registers 2

    .line 264
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    .line 265
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasBluetooth()Z
    .registers 1

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private initMeid()V
    .registers 5

    const-string v0, "meid"

    .line 416
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, "ril.cdma.meid"

    const-string v3, ""

    .line 417
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 419
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_1c

    .line 421
    :cond_19
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1c
    return-void
.end method

.method private initSimStatusPreference()V
    .registers 6

    .line 375
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 376
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3c

    .line 381
    :cond_19
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v0

    .line 382
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v2

    const-string/jumbo v4, "sim_status"

    .line 383
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_3c

    if-nez v0, :cond_38

    if-eqz v2, :cond_39

    :cond_38
    move v1, v3

    .line 385
    :cond_39
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private pad(I)Ljava/lang/String;
    .registers 3

    const/16 p0, 0xa

    if-lt p1, p0, :cond_9

    .line 314
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 316
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 243
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method private setBtStatus()V
    .registers 3

    .line 283
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 284
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_2d

    .line 285
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 286
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 288
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 290
    :cond_26
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private setIpAddressStatus()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mCM:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 257
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 259
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mIpAddress:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_15
    return-void
.end method

.method private setOnWindowFocusChangedListener()V
    .registers 3

    .line 391
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 393
    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 395
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStatus$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    .line 396
    invoke-virtual {v0, v1}, Lcom/meizu/settings/MzSettingsActivity;->setOnWindowFocusChangedListener(Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;)V

    :cond_16
    return-void
.end method

.method private setWifiStatus()V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 249
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->hasRealMacAddress()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_18

    .line 250
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 251
    :goto_19
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_26
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUnavailable:Ljava/lang/String;

    :goto_28
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x2c

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 161
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance p1, Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;

    invoke-direct {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus$MyHandler;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mHandler:Landroid/os/Handler;

    const-string p1, "connectivity"

    .line 165
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mCM:Landroid/net/ConnectivityManager;

    const-string/jumbo p1, "wifi"

    .line 166
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const p1, 0x7f160056

    .line 169
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "battery_level"

    .line 170
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryLevel:Landroid/preference/Preference;

    const-string p1, "battery_status"

    .line 171
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryStatus:Landroid/preference/Preference;

    const-string p1, "bt_address"

    .line 172
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    const-string/jumbo p1, "wifi_mac_address"

    .line 173
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mWifiMacAddress:Landroid/preference/Preference;

    const-string/jumbo p1, "wifi_ip_address"

    .line 174
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mIpAddress:Landroid/preference/Preference;

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mRes:Landroid/content/res/Resources;

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f1214ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUnavailable:Ljava/lang/String;

    const-string/jumbo p1, "up_time"

    .line 180
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUptime:Landroid/preference/Preference;

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 182
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->hasBluetooth()Z

    move-result v0

    if-nez v0, :cond_85

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBtAddress:Landroid/preference/Preference;

    .line 187
    :cond_85
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 188
    sget-object p1, Lcom/meizu/settings/deviceinfo/FlymeStatus;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_90
    if-ge v1, v0, :cond_9c

    aget-object v2, p1, v1

    .line 189
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 192
    :cond_9c
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->updateConnectivity()V

    .line 194
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->setOnWindowFocusChangedListener()V

    .line 199
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 200
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c5

    :cond_ba
    const-string/jumbo p1, "sim_status"

    .line 201
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string p1, "imei_info"

    .line 202
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 205
    :cond_c5
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->initMeid()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 226
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 228
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 232
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 20

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sim_status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v0

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v0, :cond_42

    if-eqz v2, :cond_42

    .line 359
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v0, Lcom/meizu/settings/MzSimInfoManagement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f12142c

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_5b

    .line 363
    :cond_42
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-class v0, Lcom/meizu/settings/MzSimCardStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x7f12142c

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    :cond_5b
    :goto_5b
    return v1
.end method

.method public onResume()V
    .registers 6

    .line 215
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 221
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateConnectivity()V
    .registers 1

    .line 296
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->setWifiStatus()V

    .line 297
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->setBtStatus()V

    .line 298
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->setIpAddressStatus()V

    return-void
.end method

.method updateTimes()V
    .registers 5

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    const-wide/16 v0, 0x1

    .line 309
    :cond_14
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->convert(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
