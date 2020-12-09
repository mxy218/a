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

    .line 63
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 64
    const/4 p0, 0x1

    return p0

    .line 65
    :cond_8
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 66
    const/4 p0, 0x2

    return p0

    .line 67
    :cond_10
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 68
    const/4 p0, 0x3

    return p0

    .line 69
    :cond_19
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    .line 70
    const/4 p0, 0x4

    return p0

    .line 71
    :cond_22
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_2b

    .line 72
    const/4 p0, 0x5

    return p0

    .line 74
    :cond_2b
    const/4 p0, 0x6

    return p0
.end method

.method private static bucketizeRadiusToStatsdEnum(F)I
    .registers 2

    .line 90
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    .line 91
    const/4 p0, 0x7

    return p0

    .line 92
    :cond_7
    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_f

    .line 93
    const/4 p0, 0x1

    return p0

    .line 94
    :cond_f
    const/high16 v0, 0x43480000  # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    .line 95
    const/4 p0, 0x2

    return p0

    .line 96
    :cond_17
    const/high16 v0, 0x43960000  # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1f

    .line 97
    const/4 p0, 0x3

    return p0

    .line 98
    :cond_1f
    const/high16 v0, 0x447a0000  # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_27

    .line 99
    const/4 p0, 0x4

    return p0

    .line 100
    :cond_27
    const v0, 0x461c4000  # 10000.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_30

    .line 101
    const/4 p0, 0x5

    return p0

    .line 103
    :cond_30
    const/4 p0, 0x6

    return p0
.end method

.method private static bucketizeSmallestDisplacementToStatsdEnum(F)I
    .registers 2

    .line 80
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    .line 81
    const/4 p0, 0x1

    return p0

    .line 82
    :cond_7
    if-lez v0, :cond_11

    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_11

    .line 83
    const/4 p0, 0x2

    return p0

    .line 85
    :cond_11
    const/4 p0, 0x3

    return p0
.end method

.method private static categorizeActivityImportance(I)I
    .registers 2

    .line 129
    const/16 v0, 0x64

    if-ne p0, v0, :cond_6

    .line 130
    const/4 p0, 0x1

    return p0

    .line 131
    :cond_6
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_c

    .line 134
    const/4 p0, 0x2

    return p0

    .line 136
    :cond_c
    const/4 p0, 0x3

    return p0
.end method

.method private checkApiUsageLogCap()Z
    .registers 6

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
    iget v0, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    add-int/2addr v0, v4

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    .line 172
    iget v0, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    if-ge v0, v1, :cond_34

    move v3, v4

    :cond_34
    return v3
.end method

.method private static getBucketizedExpireIn(J)I
    .registers 6

    .line 108
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 109
    const/4 p0, 0x6

    return p0

    .line 112
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    const-wide/16 v2, 0x0

    sub-long/2addr p0, v0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 115
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_1e

    .line 116
    const/4 p0, 0x1

    return p0

    .line 117
    :cond_1e
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_27

    .line 118
    const/4 p0, 0x2

    return p0

    .line 119
    :cond_27
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_30

    .line 120
    const/4 p0, 0x3

    return p0

    .line 121
    :cond_30
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_39

    .line 122
    const/4 p0, 0x4

    return p0

    .line 124
    :cond_39
    const/4 p0, 0x5

    return p0
.end method

.method private static getCallbackType(IZZ)I
    .registers 4

    .line 142
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 143
    const/4 p0, 0x1

    return p0

    .line 148
    :cond_5
    if-eqz p2, :cond_9

    .line 149
    const/4 p0, 0x3

    return p0

    .line 150
    :cond_9
    if-eqz p1, :cond_d

    .line 151
    const/4 p0, 0x2

    return p0

    .line 153
    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static providerNameToStatsdEnum(Ljava/lang/String;)I
    .registers 2

    .line 48
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    const/4 p0, 0x1

    return p0

    .line 50
    :cond_b
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    const/4 p0, 0x2

    return p0

    .line 52
    :cond_15
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    const/4 p0, 0x3

    return p0

    .line 54
    :cond_20
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 55
    const/4 p0, 0x4

    return p0

    .line 57
    :cond_2a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public logLocationApiUsage(IILjava/lang/String;)V
    .registers 20

    .line 242
    move/from16 v0, p2

    const-string v15, "LocationUsageLogger"

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v1

    if-nez v1, :cond_b

    .line 243
    return-void

    .line 246
    :cond_b
    sget-boolean v1, Lcom/android/server/LocationUsageLogger;->D:Z

    if-eqz v1, :cond_38

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log API Usage to statsd. usageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apiInUse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", providerName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 246
    :cond_38
    move/from16 v2, p1

    move-object/from16 v3, p3

    .line 251
    :goto_3c
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
    const/4 v3, 0x1

    invoke-static {v0, v3, v3}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 251
    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_57} :catch_58

    .line 268
    goto :goto_5e

    .line 265
    :catch_58
    move-exception v0

    .line 267
    const-string v1, "Failed to log API usage to statsd."

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :goto_5e
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    .registers 30

    .line 186
    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v1, p5

    move/from16 v2, p6

    const-string v15, "LocationUsageLogger"

    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v4

    if-nez v4, :cond_11

    .line 187
    return-void

    .line 190
    :cond_11
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p4, :cond_17

    move v6, v4

    goto :goto_18

    :cond_17
    move v6, v5

    .line 191
    :goto_18
    if-nez p7, :cond_1c

    move v7, v4

    goto :goto_1d

    :cond_1c
    move v7, v5

    .line 192
    :goto_1d
    sget-boolean v8, Lcom/android/server/LocationUsageLogger;->D:Z

    if-eqz v8, :cond_87

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "log API Usage to statsd. usageType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", apiInUse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_103

    .line 194
    const-string v9, ""

    if-nez p3, :cond_41

    move-object v10, v9

    goto :goto_43

    :cond_41
    move-object/from16 v10, p3

    :goto_43
    :try_start_43
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", locationRequest: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v6, :cond_4f

    move-object v10, v9

    goto :goto_53

    :cond_4f
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_53
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", hasListener: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasIntent: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", geofence: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz v7, :cond_6e

    goto :goto_72

    :cond_6e
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", importance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 192
    :cond_87
    move/from16 v9, p8

    .line 204
    :goto_89
    nop

    .line 206
    if-eqz v6, :cond_8e

    .line 207
    move v10, v5

    goto :goto_96

    .line 208
    :cond_8e
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/LocationUsageLogger;->providerNameToStatsdEnum(Ljava/lang/String;)I

    move-result v10

    .line 209
    :goto_96
    if-eqz v6, :cond_9a

    .line 210
    move v11, v5

    goto :goto_9e

    .line 211
    :cond_9a
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getQuality()I

    move-result v11

    .line 212
    :goto_9e
    if-eqz v6, :cond_a2

    .line 213
    move v12, v5

    goto :goto_aa

    .line 214
    :cond_a2
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/LocationUsageLogger;->bucketizeIntervalToStatsdEnum(J)I

    move-result v12

    .line 215
    :goto_aa
    if-eqz v6, :cond_ae

    .line 216
    move v13, v5

    goto :goto_b7

    .line 217
    :cond_ae
    nop

    .line 218
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v13

    .line 217
    invoke-static {v13}, Lcom/android/server/LocationUsageLogger;->bucketizeSmallestDisplacementToStatsdEnum(F)I

    move-result v13

    .line 219
    :goto_b7
    if-eqz v6, :cond_bc

    const-wide/16 v16, 0x0

    goto :goto_c3

    :cond_bc
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v14

    int-to-long v8, v14

    move-wide/from16 v16, v8

    .line 221
    :goto_c3
    if-nez v6, :cond_d2

    if-ne v0, v4, :cond_c8

    goto :goto_d2

    .line 223
    :cond_c8
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/LocationUsageLogger;->getBucketizedExpireIn(J)I

    move-result v4

    move v14, v4

    goto :goto_d3

    .line 222
    :cond_d2
    :goto_d2
    move v14, v5

    .line 224
    :goto_d3
    invoke-static {v3, v1, v2}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v18

    .line 225
    if-eqz v7, :cond_dc

    .line 226
    move/from16 v19, v5

    goto :goto_e6

    .line 227
    :cond_dc
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/LocationUsageLogger;->bucketizeRadiusToStatsdEnum(F)I

    move-result v1

    move/from16 v19, v1

    .line 228
    :goto_e6
    invoke-static/range {p8 .. p8}, Lcom/android/server/LocationUsageLogger;->categorizeActivityImportance(I)I

    move-result v20

    .line 204
    const/16 v1, 0xd2

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    move-wide/from16 v9, v16

    move v11, v14

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_102} :catch_103

    .line 232
    goto :goto_109

    .line 229
    :catch_103
    move-exception v0

    .line 231
    const-string v1, "Failed to log API usage to statsd."

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :goto_109
    return-void
.end method
