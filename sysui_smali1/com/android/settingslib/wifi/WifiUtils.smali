.class public Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static getFreeWifiDisabledReason(Landroid/content/Context;)I
    .registers 4

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "free_wifi_disabled_reason"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    return v0
.end method

.method private static getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)I"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_c
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object p1

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, p0}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p0

    return p0
.end method

.method static getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .registers 19
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_aa

    if-eqz v1, :cond_aa

    .line 95
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    if-eqz v6, :cond_31

    .line 97
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const-string v9, " rssi="

    .line 99
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " score="

    .line 101
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v8

    if-eqz v8, :cond_5c

    const-string v8, " speed="

    .line 103
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 105
    iget-wide v10, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, " tx=%.1f,"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v8, [Ljava/lang/Object;

    .line 106
    iget-wide v10, v1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "%.1f,"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v8, [Ljava/lang/Object;

    .line 107
    iget-wide v10, v1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "%.1f "

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v8, [Ljava/lang/Object;

    .line 108
    iget-wide v9, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "rx=%.1f"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_aa
    const/4 v6, 0x0

    .line 111
    :goto_ab
    sget v1, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v1

    move v13, v11

    move v14, v13

    move v1, v7

    move v12, v1

    :goto_be
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    move-object/from16 v16, v2

    if-eqz v15, :cond_133

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    if-nez v15, :cond_d1

    move-object/from16 v2, v16

    goto :goto_be

    .line 126
    :cond_d1
    iget v2, v15, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v17, v10

    const/16 v10, 0x1324

    if-lt v2, v10, :cond_f1

    const/16 v10, 0x170c

    if-gt v2, v10, :cond_f1

    add-int/lit8 v1, v1, 0x1

    .line 131
    iget v2, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v13, :cond_e4

    goto :goto_e5

    :cond_e4
    move v2, v13

    :goto_e5
    const/4 v10, 0x4

    if-gt v1, v10, :cond_ef

    .line 136
    invoke-static {v0, v15, v6, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ef
    move v13, v2

    goto :goto_12e

    .line 139
    :cond_f1
    iget v2, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v10, 0x960

    if-lt v2, v10, :cond_10f

    const/16 v10, 0x9c4

    if-gt v2, v10, :cond_10f

    add-int/lit8 v7, v7, 0x1

    .line 144
    iget v2, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v11, :cond_102

    goto :goto_103

    :cond_102
    move v2, v11

    :goto_103
    const/4 v10, 0x4

    if-gt v7, v10, :cond_10d

    .line 149
    invoke-static {v0, v15, v6, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10d
    move v11, v2

    goto :goto_12e

    .line 152
    :cond_10f
    iget v2, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const v10, 0xe3d0

    if-lt v2, v10, :cond_12e

    const v10, 0x11238

    if-gt v2, v10, :cond_12e

    add-int/lit8 v12, v12, 0x1

    .line 157
    iget v2, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v14, :cond_122

    goto :goto_123

    :cond_122
    move v2, v14

    :goto_123
    const/4 v10, 0x4

    if-gt v12, v10, :cond_12d

    .line 162
    invoke-static {v0, v15, v6, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12d
    move v14, v2

    :cond_12e
    :goto_12e
    move-object/from16 v2, v16

    move-object/from16 v10, v17

    goto :goto_be

    :cond_133
    const-string v0, " ["

    move-object/from16 v2, v16

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    const-string v6, "max="

    const-string v8, ")"

    const-string v9, "("

    if-lez v7, :cond_160

    .line 169
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    if-le v7, v10, :cond_159

    .line 171
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_160
    const-string v3, ";"

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_183

    .line 177
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    if-le v1, v7, :cond_17c

    .line 179
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_17c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v12, :cond_1a4

    .line 185
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le v12, v1, :cond_19d

    .line 187
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_19d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a4
    const-string v0, "]"

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFreeWifiEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "free_wifi_enabler"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1d

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    if-ne v0, v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    return v3
.end method

.method public static isFreeWifiOnceConnected(Landroid/content/Context;)Z
    .registers 5

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "free_wifi_once_connected"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1d

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    const/4 p0, 0x1

    if-ne v0, p0, :cond_21

    goto :goto_22

    :cond_21
    move p0, v3

    :goto_22
    return p0
.end method

.method public static setFreeWifiDisabledReason(Landroid/content/Context;I)V
    .registers 3

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "free_wifi_disabled_reason"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setFreeWifiEnabled(Landroid/content/Context;Z)V
    .registers 3

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "free_wifi_enabler"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setFreeWifiNofity(Landroid/content/Context;Z)V
    .registers 3

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "free_wifi_notify"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \n{"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const-string p2, "*"

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string p2, "="

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScoredNetworkCache()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiUtils;->getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_44

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_44
    iget-wide p0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    sub-long/2addr p3, p0

    long-to-int p0, p3

    div-int/lit16 p0, p0, 0x3e8

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
