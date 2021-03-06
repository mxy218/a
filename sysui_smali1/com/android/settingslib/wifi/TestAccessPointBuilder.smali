.class public Lcom/android/settingslib/wifi/TestAccessPointBuilder;
.super Ljava/lang/Object;
.source "TestAccessPointBuilder.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field private mIsCarrierAp:Z

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private mScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScoredNetworkCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurity:I

.field private mSpeed:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    const/high16 v2, -0x80000000

    .line 50
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    const/4 v2, -0x1

    .line 51
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    const-string v2, "TestSsid"

    .line 52
    iput-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 54
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 59
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    .line 60
    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/wifi/AccessPoint;
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 78
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 79
    iget v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 80
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 83
    :goto_19
    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    const-string v3, "key_ssid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_config"

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v2, "key_networkinfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const-string v2, "key_wifiinfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    if-eqz v1, :cond_3c

    const-string v2, "key_fqdn"

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3c
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v1, :cond_45

    const-string v2, "key_provider_friendly_name"

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_45
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_5a

    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "key_scanresults"

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 97
    :cond_5a
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    if-eqz v1, :cond_63

    const-string v2, "key_scorednetworkcache"

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    :cond_63
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    const-string v2, "key_security"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    const-string v2, "key_speed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    const-string v2, "key_is_carrier_ap"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    if-eqz v1, :cond_81

    const-string v2, "key_carrier_name"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_81
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 108
    iget p0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    invoke-virtual {v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    return-object v1
.end method

.method public setActive(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_e

    .line 115
    new-instance p1, Landroid/net/NetworkInfo;

    const-string v0, "TestNetwork"

    const/16 v1, 0x8

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    :goto_11
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public setCarrierName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public setFqdn(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCarrierAp(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2

    .line 245
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    return-object p0
.end method

.method public setLevel(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, -0x64

    .line 136
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_1c

    :cond_7
    const/4 v0, 0x3

    if-lt p1, v0, :cond_f

    const/16 p1, -0x37

    .line 138
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_1c

    :cond_f
    const/high16 v0, 0x42340000  # 45.0f

    const/high16 v1, 0x40000000  # 2.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    const/high16 v0, -0x3d380000  # -100.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 142
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :goto_1c
    return-object p0
.end method

.method public setNetworkId(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 230
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    return-object p0
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public setProviderFriendlyName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public setReachable(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_d

    .line 173
    iget p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    if-ne p1, v0, :cond_f

    const/16 p1, -0x64

    .line 174
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_f

    .line 177
    :cond_d
    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    :cond_f
    :goto_f
    return-object p0
.end method

.method public setRssi(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 155
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    return-object p0
.end method

.method public setSaved(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 185
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    goto :goto_9

    :cond_6
    const/4 p1, -0x1

    .line 187
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    :goto_9
    return-object p0
.end method

.method public setScanResults(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setScoredNetworkCache(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSecurity(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 194
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    return-object p0
.end method

.method public setSpeed(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2

    .line 160
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method
