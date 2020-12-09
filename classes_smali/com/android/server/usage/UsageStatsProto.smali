.class final Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "UsageStatsProto.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "UsageStatsProto"

    sput-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 178
    :cond_b
    const/4 v0, 0x0

    .line 180
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 183
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 185
    if-nez v3, :cond_35

    .line 186
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 187
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 191
    :cond_30
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5e

    const/4 v5, 0x1

    if-eq v4, v5, :cond_53

    const/4 v5, 0x3

    if-eq v4, v5, :cond_43

    goto :goto_5d

    .line 202
    :cond_43
    const-wide v1, 0x20b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 204
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V

    .line 205
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5e

    .line 198
    :cond_53
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    nop

    .line 211
    :goto_5d
    goto :goto_35

    .line 207
    :cond_5e
    :goto_5e
    if-nez v0, :cond_67

    .line 209
    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    const-string p1, ""

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_67
    return-void
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 244
    nop

    .line 245
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 247
    const-wide v1, 0x10b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    .line 250
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 251
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v3

    goto :goto_23

    .line 255
    :cond_1e
    new-instance v3, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v3}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 258
    :goto_23
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_81

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_50

    const/4 v6, 0x4

    if-eq v5, v6, :cond_44

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3a

    goto :goto_80

    .line 281
    :cond_3a
    const-wide v4, 0x10800000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    .line 282
    goto :goto_80

    .line 277
    :cond_44
    const-wide v5, 0x10500000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 279
    goto :goto_80

    .line 273
    :cond_50
    const-wide v5, 0x10300000003L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 275
    goto :goto_80

    .line 269
    :cond_5c
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 271
    goto :goto_80

    .line 261
    :cond_6b
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 262
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 263
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 264
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 265
    iget v3, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v3, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 266
    nop

    .line 267
    move-object v3, v5

    .line 292
    :goto_80
    goto :goto_23

    .line 284
    :cond_81
    iget-wide v0, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_8d

    .line 286
    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v0, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 288
    :cond_8d
    if-eqz v4, :cond_93

    .line 289
    iget-object v0, v3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 291
    :cond_93
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 292
    return-void
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 159
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    goto :goto_2a

    .line 164
    :cond_12
    const-wide v0, 0x10300000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 165
    goto :goto_2a

    .line 161
    :cond_1e
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 162
    nop

    .line 168
    :goto_2a
    goto :goto_4

    .line 167
    :cond_2b
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 168
    return-void
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    nop

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    goto :goto_25

    .line 227
    :cond_11
    const-wide v1, 0x10500000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 229
    goto :goto_25

    .line 223
    :cond_1b
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 225
    nop

    .line 236
    :goto_25
    goto :goto_3

    .line 231
    :cond_26
    if-nez v0, :cond_32

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 234
    :cond_32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_39
    return-void
.end method

.method private static loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 300
    invoke-virtual {p3, p0, p4}, Lcom/android/server/usage/IntervalStats;->buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p4

    .line 301
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 302
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p0, :cond_15

    .line 305
    iget-object p0, p3, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, p4}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 306
    return-void

    .line 303
    :cond_15
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package field present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 69
    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v2

    const-wide v3, 0x10900000001L

    if-eqz v2, :cond_26

    .line 72
    nop

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_3b

    .line 74
    :cond_26
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 76
    nop

    .line 77
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_3b

    .line 80
    :cond_36
    new-instance v2, Landroid/app/usage/UsageStats;

    invoke-direct {v2}, Landroid/app/usage/UsageStats;-><init>()V

    .line 83
    :goto_3b
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10a

    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_11a

    goto/16 :goto_108

    .line 143
    :pswitch_4b  #0xb
    const-wide v5, 0x1030000000bL

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto/16 :goto_108

    .line 139
    :pswitch_58  #0xa
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x1030000000aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 141
    goto/16 :goto_108

    .line 134
    :pswitch_68  #0x9
    const-wide v5, 0x10300000009L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 136
    goto/16 :goto_108

    .line 130
    :pswitch_75  #0x8
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000008L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 132
    goto/16 :goto_108

    .line 123
    :pswitch_85  #0x7
    const-wide v5, 0x20b00000007L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 125
    invoke-static {p0, v2}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 126
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 127
    goto/16 :goto_108

    .line 119
    :pswitch_96  #0x6
    const-wide v5, 0x10500000006L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 121
    goto :goto_108

    .line 115
    :pswitch_a2  #0x5
    const-wide v5, 0x10500000005L

    .line 116
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 117
    goto :goto_108

    .line 111
    :pswitch_ae  #0x4
    const-wide v5, 0x10300000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 113
    goto :goto_108

    .line 107
    :pswitch_ba  #0x3
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 109
    goto :goto_108

    .line 97
    :pswitch_c9  #0x2
    nop

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 97
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 99
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 100
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 101
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 102
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 103
    nop

    .line 104
    move-object v2, v5

    goto :goto_108

    .line 87
    :pswitch_ed  #0x1
    nop

    .line 88
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 89
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 90
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 91
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 92
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 93
    nop

    .line 94
    move-object v2, v5

    .line 145
    :goto_108
    goto/16 :goto_3b

    .line 148
    :cond_10a
    iget-wide v0, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide/16 v3, 0x0

    cmp-long p4, v0, v3

    if-nez p4, :cond_116

    .line 150
    iget-wide p3, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide p3, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 152
    :cond_116
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 153
    return-void

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_ed  #00000001
        :pswitch_c9  #00000002
        :pswitch_ba  #00000003
        :pswitch_ae  #00000004
        :pswitch_a2  #00000005
        :pswitch_96  #00000006
        :pswitch_85  #00000007
        :pswitch_75  #00000008
        :pswitch_68  #00000009
        :pswitch_58  #0000000a
        :pswitch_4b  #0000000b
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 507
    nop

    .line 509
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 510
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 511
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 512
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 515
    :goto_18
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ae

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_93

    const/4 v2, 0x3

    if-eq v1, v2, :cond_87

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7b

    packed-switch v1, :pswitch_data_be

    packed-switch v1, :pswitch_data_ca

    goto/16 :goto_ac

    .line 555
    :pswitch_33  #0x16
    const-wide v1, 0x20b00000016L

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V

    .line 556
    goto/16 :goto_ac

    .line 552
    :pswitch_3d  #0x15
    const-wide v1, 0x20b00000015L

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V

    .line 553
    goto :goto_ac

    .line 549
    :pswitch_46  #0x14
    const-wide v1, 0x20b00000014L

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V

    .line 550
    goto :goto_ac

    .line 541
    :pswitch_4f  #0xd
    const-wide v1, 0x10b0000000dL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 543
    goto :goto_ac

    .line 537
    :pswitch_5a  #0xc
    const-wide v1, 0x10b0000000cL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 539
    goto :goto_ac

    .line 533
    :pswitch_65  #0xb
    const-wide v1, 0x10b0000000bL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 535
    goto :goto_ac

    .line 529
    :pswitch_70  #0xa
    const-wide v1, 0x10b0000000aL

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 531
    goto :goto_ac

    .line 525
    :cond_7b
    const-wide v1, 0x10500000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 527
    goto :goto_ac

    .line 521
    :cond_87
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 523
    goto :goto_ac

    .line 545
    :cond_93
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProto;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    .line 546
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 547
    goto :goto_ac

    .line 517
    :cond_9d
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 519
    nop

    .line 563
    :goto_ac
    goto/16 :goto_18

    .line 558
    :cond_ae
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_ba

    .line 560
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 562
    :cond_ba
    invoke-virtual {p1}, Lcom/android/server/usage/IntervalStats;->upgradeIfNeeded()V

    .line 563
    return-void

    :pswitch_data_be
    .packed-switch 0xa
        :pswitch_70  #0000000a
        :pswitch_65  #0000000b
        :pswitch_5a  #0000000c
        :pswitch_4f  #0000000d
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x14
        :pswitch_46  #00000014
        :pswitch_3d  #00000015
        :pswitch_33  #00000016
    .end packed-switch
.end method

.method private static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 47
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_23

    .line 50
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :goto_23
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 53
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    goto :goto_3e

    .line 55
    :cond_32
    const-wide v2, 0x20900000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_3e
    goto :goto_23

    .line 59
    :cond_3f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 60
    return-object v4
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 576
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v0, v2

    const-wide v2, 0x10300000001L

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 577
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v0, 0x10500000003L

    invoke-virtual {v6, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 578
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v0, 0x10500000004L

    invoke-virtual {v6, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 580
    invoke-static {v6, p1}, Lcom/android/server/usage/UsageStatsProto;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 582
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v1, 0x10b0000000aL

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 584
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v1, 0x10b0000000bL

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 586
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 588
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v1, 0x10b0000000dL

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 591
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    .line 592
    const/4 v7, 0x0

    move v0, v7

    :goto_72
    if-ge v0, p0, :cond_87

    .line 593
    const-wide v1, 0x20b00000014L

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 594
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 593
    invoke-static {v6, v1, v2, p1, v3}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 596
    :cond_87
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    .line 597
    move v8, v7

    :goto_8e
    if-ge v8, p0, :cond_b4

    .line 598
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 599
    const-wide v1, 0x20b00000015L

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 600
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/usage/ConfigurationStats;

    .line 599
    move-object v0, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 597
    add-int/lit8 v8, v8, 0x1

    goto :goto_8e

    .line 602
    :cond_b4
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    .line 603
    nop

    :goto_bb
    if-ge v7, p0, :cond_ce

    .line 604
    const-wide v0, 0x20b00000016L

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    invoke-static {v6, v0, v1, p1, v2}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 603
    add-int/lit8 v7, v7, 0x1

    goto :goto_bb

    .line 607
    :cond_ce
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 608
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    if-eqz p1, :cond_52

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_52

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 366
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_52

    .line 369
    :cond_13
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 370
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_51

    .line 371
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 373
    if-eqz v2, :cond_4e

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 374
    goto :goto_4e

    .line 376
    :cond_37
    const-wide v4, 0x20b00000007L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 377
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 378
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V

    .line 379
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 370
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 381
    :cond_51
    return-void

    .line 367
    :cond_52
    :goto_52
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 402
    iget-object v0, p4, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 403
    iget-wide v0, p4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v2, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v0, v2

    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 405
    iget-wide v0, p4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 407
    iget p3, p4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v0, 0x10500000004L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 408
    const-wide p3, 0x10800000005L

    invoke-virtual {p0, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 409
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 411
    return-void
.end method

.method private static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 357
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 358
    const-wide v0, 0x10300000002L

    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 359
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 360
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 386
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_38

    .line 387
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 389
    if-lez v3, :cond_35

    .line 390
    const-wide v4, 0x20b00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 391
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 392
    const-wide v6, 0x10500000003L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 393
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 386
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 396
    :cond_38
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 416
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 417
    const-string v1, ") not found in IntervalStats string cache"

    if-ltz v0, :cond_1b

    .line 418
    const-wide v2, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_40

    .line 421
    :cond_1b
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage event package name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-wide v2, 0x10900000001L

    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 425
    :goto_40
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 426
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 427
    if-ltz v0, :cond_59

    .line 428
    const-wide v2, 0x10500000004L

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7e

    .line 431
    :cond_59
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage event class name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-wide v2, 0x10900000003L

    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 436
    :cond_7e
    :goto_7e
    const-wide v2, 0x10300000005L

    iget-wide v4, p4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v6, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 437
    const-wide v2, 0x10500000006L

    iget v0, p4, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 438
    const-wide v2, 0x10500000007L

    iget v0, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 439
    const-wide v2, 0x1050000000eL

    iget v0, p4, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 440
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_dd

    .line 441
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 442
    if-ltz v0, :cond_c2

    .line 443
    const-wide v2, 0x1050000000fL

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_dd

    .line 447
    :cond_c2
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage event task root package name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_dd
    :goto_dd
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_111

    .line 452
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 453
    if-ltz v0, :cond_f6

    .line 454
    const-wide v2, 0x10500000010L

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_111

    .line 458
    :cond_f6
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage event task root class name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_111
    :goto_111
    iget v0, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_180

    const/16 v2, 0x8

    if-eq v0, v2, :cond_171

    const/16 v2, 0xb

    if-eq v0, v2, :cond_162

    const/16 v2, 0xc

    if-eq v0, v2, :cond_123

    goto :goto_18e

    .line 479
    :cond_123
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_18e

    .line 480
    iget-object p3, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 482
    if-ltz p3, :cond_13c

    .line 483
    const-wide v0, 0x1050000000dL

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_18e

    .line 487
    :cond_13c
    sget-object p3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage event notification channel name ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-wide v0, 0x1090000000cL

    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_18e

    .line 474
    :cond_162
    iget p3, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p3, :cond_18e

    .line 475
    const-wide v0, 0x1050000000bL

    iget p3, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_18e

    .line 469
    :cond_171
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p3, :cond_18e

    .line 470
    const-wide v0, 0x10900000009L

    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_18e

    .line 464
    :cond_180
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p3, :cond_18e

    .line 465
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v0, 0x10b00000008L

    invoke-virtual {p3, p0, v0, v1}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 496
    :cond_18e
    :goto_18e
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 497
    return-void
.end method

.method private static writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 311
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 312
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 313
    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2d

    .line 314
    const-wide v4, 0x20900000002L

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 316
    :cond_2d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 317
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 323
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 324
    if-ltz v0, :cond_19

    .line 325
    const-wide v1, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_40

    .line 328
    :cond_19
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsageStats package name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") not found in IntervalStats string cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-wide v0, 0x10900000001L

    iget-object v2, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 333
    :goto_40
    const-wide v0, 0x10300000003L

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v4, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 335
    const-wide v0, 0x10300000004L

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 337
    const-wide v0, 0x10500000005L

    iget v2, p4, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 340
    const-wide v0, 0x10300000008L

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v4, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 342
    const-wide v0, 0x10300000009L

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 345
    const-wide v0, 0x1030000000aL

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v4, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 347
    const-wide v0, 0x1030000000bL

    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 349
    const-wide v0, 0x10500000006L

    iget p3, p4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 350
    invoke-static {p0, p4}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V

    .line 351
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 352
    return-void
.end method
