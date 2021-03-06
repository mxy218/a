.class public Lcom/android/settings/wifi/dpp/WifiQrCode;
.super Ljava/lang/Object;
.source "WifiQrCode.java"


# instance fields
.field private mInformation:Ljava/lang/String;

.field private mPublicKey:Ljava/lang/String;

.field private mQrCode:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    const-string v0, "DPP:"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "DPP"

    .line 95
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->parseWifiDppQrCode(Ljava/lang/String;)V

    goto :goto_2a

    :cond_1b
    const-string v0, "WIFI:"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "WIFI"

    .line 98
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->parseZxingWifiQrCode(Ljava/lang/String;)V

    :goto_2a
    return-void

    .line 101
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid scheme"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty QR code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(?<!\\\\)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .registers 4

    const/4 v0, 0x0

    .line 235
    :try_start_1
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_13

    .line 240
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DPP"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-object v1

    :catch_13
    :cond_13
    return-object v0
.end method

.method private getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseWifiDppQrCode(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "DPP:"

    const-string v1, ";"

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "K:"

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 113
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mPublicKey:Ljava/lang/String;

    const-string v0, "I:"

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mInformation:Ljava/lang/String;

    return-void

    .line 111
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseZxingWifiQrCode(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "WIFI:"

    const-string v1, ";"

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "T:"

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    .line 124
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "P:"

    .line 125
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H:"

    .line 126
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "true"

    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 135
    invoke-static/range {v4 .. v9}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 138
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz p0, :cond_40

    return-void

    .line 139
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInformation()Ljava/lang/String;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mInformation:Ljava/lang/String;

    return-object p0
.end method

.method getPublicKey()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getQrCode()Ljava/lang/String;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_6
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    return-object v0
.end method

.method removeBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_11
    if-ge v2, v0, :cond_28

    aget-char v4, p1, v2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1e

    .line 182
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1c
    move v3, v1

    goto :goto_25

    :cond_1e
    if-eqz v3, :cond_24

    .line 186
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_24
    const/4 v3, 0x1

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 195
    :cond_28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
