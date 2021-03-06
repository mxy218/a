.class Lcom/android/server/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# static fields
.field private static final API_USAGE_LOG_HOURLY_CAP:I = 0x3c

.field private static final D:Z

.field private static final ONE_HOUR_IN_MILLIS:I = 0x36ee80

.field private static final ONE_MINUTE_IN_MILLIS:I = 0xea60

.field private static final ONE_SEC_IN_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LocationUsageLogger"


# instance fields
.field private mApiUsageLogHourlyCount:I

.field private mLastApiUsageLogHour:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "LocationUsageLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method private static bucketizeIntervalToStatsdEnum(J)I
    .registers 4
    .param p0, "interval"  # J

    .line 63
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 64
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_8
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 66
    const/4 v0, 0x2

    return v0

    .line 67
    :cond_10
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 68
    const/4 v0, 0x3

    return v0

    .line 69
    :cond_19
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    .line 70
    const/4 v0, 0x4

    return v0

    .line 71
    :cond_22
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_2b

    .line 72
    const/4 v0, 0x5

    return v0

    .line 74
    :cond_2b
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeRadiusToStatsdEnum(F)I
    .registers 2
    .param p0, "radius"  # F

    .line 90
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    .line 91
    const/4 v0, 0x7

    return v0

    .line 92
    :cond_7
    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_f

    .line 93
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_f
    const/high16 v0, 0x43480000  # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    .line 95
    const/4 v0, 0x2

    return v0

    .line 96
    :cond_17
    const/high16 v0, 0x43960000  # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1f

    .line 97
    const/4 v0, 0x3

    return v0

    .line 98
    :cond_1f
    const/high16 v0, 0x447a0000  # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_27

    .line 99
    const/4 v0, 0x4

    return v0

    .line 100
    :cond_27
    const v0, 0x461c4000  # 10000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_30

    .line 101
    const/4 v0, 0x5

    return v0

    .line 103
    :cond_30
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeSmallestDisplacementToStatsdEnum(F)I
    .registers 3
    .param p0, "smallestDisplacement"  # F

    .line 80
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_7

    .line 81
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_7
    cmpl-float v0, p0, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 83
    const/4 v0, 0x2

    return v0

    .line 85
    :cond_13
    const/4 v0, 0x3

    return v0
.end method

.method private static categorizeActivityImportance(I)I
    .registers 2
    .param p0, "importance"  # I

    .line 129
    const/16 v0, 0x64

    if-ne p0, v0, :cond_6

    .line 130
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_6
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_c

    .line 134
    const/4 v0, 0x2

    return v0

    .line 136
    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method private checkApiUsageLogCap()Z
    .registers 7

    .line 160
    sget-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z

    if-eqz v0, :cond_b

    .line 161
    const-string v0, "LocationUsageLogger"

    const-string v1, "checking APIUsage log cap."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_b
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 165
    .local v0, "currentHour":J
    iget-wide v2, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_24

    .line 166
    iput-wide v0, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 167
    iput v3, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    .line 168
    return v4

    .line 170
    :cond_24
    iget v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    add-int/2addr v2, v4

    const/16 v5, 0x3c

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    .line 172
    iget v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    if-ge v2, v5, :cond_34

    move v3, v4

    :cond_34
    return v3
.end method

.method private static getBucketizedExpireIn(J)I
    .registers 8
    .param p0, "expireAt"  # J

    .line 108
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 109
    const/4 v0, 0x6

    return v0

    .line 112
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    .local v0, "elapsedRealtime":J
    const-wide/16 v2, 0x0

    sub-long v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 115
    .local v2, "expireIn":J
    const-wide/16 v4, 0x4e20

    cmp-long v4, v2, v4

    if-gez v4, :cond_1f

    .line 116
    const/4 v4, 0x1

    return v4

    .line 117
    :cond_1f
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gez v4, :cond_28

    .line 118
    const/4 v4, 0x2

    return v4

    .line 119
    :cond_28
    const-wide/32 v4, 0x927c0

    cmp-long v4, v2, v4

    if-gez v4, :cond_31

    .line 120
    const/4 v4, 0x3

    return v4

    .line 121
    :cond_31
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-gez v4, :cond_3a

    .line 122
    const/4 v4, 0x4

    return v4

    .line 124
    :cond_3a
    const/4 v4, 0x5

    return v4
.end method

.method private static getCallbackType(IZZ)I
    .registers 4
    .param p0, "apiType"  # I
    .param p1, "hasListener"  # Z
    .param p2, "hasIntent"  # Z

    .line 142
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 143
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_5
    if-eqz p2, :cond_9

    .line 149
    const/4 v0, 0x3

    return v0

    .line 150
    :cond_9
    if-eqz p1, :cond_d

    .line 151
    const/4 v0, 0x2

    return v0

    .line 153
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static providerNameToStatsdEnum(Ljava/lang/String;)I
    .registers 2
    .param p0, "provider"  # Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_b
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    const/4 v0, 0x2

    return v0

    .line 52
    :cond_15
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    const/4 v0, 0x3

    return v0

    .line 54
    :cond_20
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 55
    const/4 v0, 0x4

    return v0

    .line 57
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public logLocationApiUsage(IILjava/lang/String;)V
    .registers 22
    .param p1, "usageType"  # I
    .param p2, "apiInUse"  # I
    .param p3, "providerName"  # Ljava/lang/String;

    .line 242
    move/from16 v15, p2

    const-string v14, "LocationUsageLogger"

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v0

    if-nez v0, :cond_b

    .line 243
    return-void

    .line 246
    :cond_b
    sget-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_6b

    if-eqz v0, :cond_41

    .line 247
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log API Usage to statsd. usageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_3b

    move/from16 v13, p1

    :try_start_1c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apiInUse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", providerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_39

    move-object/from16 v12, p3

    :try_start_2e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 265
    :catch_39
    move-exception v0

    goto :goto_3e

    :catch_3b
    move-exception v0

    move/from16 v13, p1

    :goto_3e
    move-object/from16 v12, p3

    goto :goto_6c

    .line 246
    :cond_41
    move/from16 v13, p1

    move-object/from16 v12, p3

    .line 251
    :goto_45
    const/16 v1, 0xd2

    const/4 v4, 0x0

    .line 253
    invoke-static/range {p3 .. p3}, Lcom/android/server/LocationUsageLogger;->providerNameToStatsdEnum(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 259
    const/4 v0, 0x1

    invoke-static {v15, v0, v0}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_57} :catch_6b

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 251
    move/from16 v2, p1

    move/from16 v3, p2

    move v12, v0

    move/from16 v13, v16

    move-object v15, v14

    move/from16 v14, v17

    :try_start_65
    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    .line 268
    goto :goto_72

    .line 265
    :catch_69
    move-exception v0

    goto :goto_6d

    :catch_6b
    move-exception v0

    :goto_6c
    move-object v15, v14

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :goto_6d
    const-string v1, "Failed to log API usage to statsd."

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_72
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    .registers 33
    .param p1, "usageType"  # I
    .param p2, "apiInUse"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "locationRequest"  # Landroid/location/LocationRequest;
    .param p5, "hasListener"  # Z
    .param p6, "hasIntent"  # Z
    .param p7, "geofence"  # Landroid/location/Geofence;
    .param p8, "activityImportance"  # I

    .line 186
    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p5

    move/from16 v12, p6

    const-string v11, "LocationUsageLogger"

    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v0

    if-nez v0, :cond_11

    .line 187
    return-void

    .line 190
    :cond_11
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_17

    move v2, v0

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    move/from16 v16, v2

    .line 191
    .local v16, "isLocationRequestNull":Z
    if-nez p7, :cond_1e

    move v2, v0

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    move/from16 v17, v2

    .line 192
    .local v17, "isGeofenceNull":Z
    sget-boolean v2, Lcom/android/server/LocationUsageLogger;->D:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_112

    if-eqz v2, :cond_91

    .line 193
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log API Usage to statsd. usageType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apiInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_40} :catch_8c

    .line 194
    const-string v3, ""

    if-nez p3, :cond_46

    move-object v4, v3

    goto :goto_48

    :cond_46
    move-object/from16 v4, p3

    :goto_48
    :try_start_48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", locationRequest: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v16, :cond_54

    move-object v4, v3

    goto :goto_58

    :cond_54
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hasListener: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasIntent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", geofence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz v17, :cond_73

    goto :goto_77

    :cond_73
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", importance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7f} :catch_8c

    move/from16 v9, p8

    :try_start_81
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 229
    .end local v16  # "isLocationRequestNull":Z
    .end local v17  # "isGeofenceNull":Z
    :catch_8c
    move-exception v0

    move/from16 v9, p8

    goto/16 :goto_113

    .line 192
    .restart local v16  # "isLocationRequestNull":Z
    .restart local v17  # "isGeofenceNull":Z
    :cond_91
    move/from16 v9, p8

    .line 204
    :goto_93
    const/16 v2, 0xd2

    .line 206
    if-eqz v16, :cond_99

    .line 207
    move v5, v1

    goto :goto_a2

    .line 208
    :cond_99
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/LocationUsageLogger;->providerNameToStatsdEnum(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    .line 209
    :goto_a2
    if-eqz v16, :cond_a6

    .line 210
    move v6, v1

    goto :goto_ab

    .line 211
    :cond_a6
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getQuality()I

    move-result v3

    move v6, v3

    .line 212
    :goto_ab
    if-eqz v16, :cond_af

    .line 213
    move v7, v1

    goto :goto_b8

    .line 214
    :cond_af
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/LocationUsageLogger;->bucketizeIntervalToStatsdEnum(J)I

    move-result v3

    move v7, v3

    .line 215
    :goto_b8
    if-eqz v16, :cond_bc

    .line 216
    move v8, v1

    goto :goto_c6

    .line 217
    :cond_bc
    nop

    .line 218
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v3

    .line 217
    invoke-static {v3}, Lcom/android/server/LocationUsageLogger;->bucketizeSmallestDisplacementToStatsdEnum(F)I

    move-result v3

    move v8, v3

    .line 219
    :goto_c6
    if-eqz v16, :cond_cd

    const-wide/16 v3, 0x0

    :goto_ca
    move-wide/from16 v18, v3

    goto :goto_d3

    :cond_cd
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    int-to-long v3, v3

    goto :goto_ca

    .line 221
    :goto_d3
    if-nez v16, :cond_e1

    if-ne v15, v0, :cond_d8

    goto :goto_e1

    .line 223
    :cond_d8
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/LocationUsageLogger;->getBucketizedExpireIn(J)I

    move-result v0

    goto :goto_e2

    .line 222
    :cond_e1
    :goto_e1
    move v0, v1

    .line 224
    :goto_e2
    invoke-static {v14, v13, v12}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v20

    .line 225
    if-eqz v17, :cond_eb

    .line 226
    move/from16 v21, v1

    goto :goto_f5

    .line 227
    :cond_eb
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/LocationUsageLogger;->bucketizeRadiusToStatsdEnum(F)I

    move-result v1

    move/from16 v21, v1

    .line 228
    :goto_f5
    invoke-static/range {p8 .. p8}, Lcom/android/server/LocationUsageLogger;->categorizeActivityImportance(I)I

    move-result v22
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_f9} :catch_112

    .line 204
    move v1, v2

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v9, v18

    move-object/from16 v23, v11

    move v11, v0

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    :try_start_10b
    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_110

    .line 232
    nop

    .end local v16  # "isLocationRequestNull":Z
    .end local v17  # "isGeofenceNull":Z
    goto :goto_11c

    .line 229
    :catch_110
    move-exception v0

    goto :goto_115

    :catch_112
    move-exception v0

    :goto_113
    move-object/from16 v23, v11

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    :goto_115
    const-string v1, "Failed to log API usage to statsd."

    move-object/from16 v2, v23

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_11c
    return-void
.end method
