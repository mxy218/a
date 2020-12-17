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
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
    .param p1, "usageStats"  # Landroid/app/usage/UsageStats;
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
    .local v0, "action":Ljava/lang/String;
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 183
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 185
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_36

    .line 186
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 187
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 191
    .end local v3  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_31
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    .restart local v3  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v5, 0x3

    if-eq v4, v5, :cond_44

    goto :goto_5e

    .line 202
    :cond_44
    const-wide v1, 0x20b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 204
    .local v1, "token":J
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V

    .line 205
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5f

    .line 198
    .end local v1  # "token":J
    :cond_54
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    nop

    .line 211
    :goto_5e
    goto :goto_36

    .line 207
    :cond_5f
    :goto_5f
    if-nez v0, :cond_68

    .line 209
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_68
    return-void
.end method

.method private static loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    .registers 15
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"  # J
    .param p3, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 244
    .local v0, "token":J
    const/4 v2, 0x0

    .line 245
    .local v2, "configActive":Z
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 247
    .local v3, "config":Landroid/content/res/Configuration;
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 250
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 251
    invoke-virtual {p3, v3}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v6

    .local v6, "configStats":Landroid/app/usage/ConfigurationStats;
    goto :goto_22

    .line 255
    .end local v6  # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_1d
    new-instance v6, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v6}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 258
    .restart local v6  # "configStats":Landroid/app/usage/ConfigurationStats;
    :goto_22
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_80

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4f

    const/4 v8, 0x4

    if-eq v7, v8, :cond_43

    const/4 v8, 0x5

    if-eq v7, v8, :cond_39

    goto :goto_7f

    .line 281
    :cond_39
    const-wide v7, 0x10800000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    .line 282
    goto :goto_7f

    .line 277
    :cond_43
    const-wide v7, 0x10500000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 279
    goto :goto_7f

    .line 273
    :cond_4f
    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 275
    goto :goto_7f

    .line 269
    :cond_5b
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000002L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 271
    goto :goto_7f

    .line 261
    :cond_6a
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 262
    invoke-virtual {p3, v3}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v7

    .line 263
    .local v7, "temp":Landroid/app/usage/ConfigurationStats;
    iget-wide v8, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 264
    iget-wide v8, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 265
    iget v8, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v8, v7, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 266
    move-object v6, v7

    .line 267
    nop

    .line 292
    .end local v7  # "temp":Landroid/app/usage/ConfigurationStats;
    :goto_7f
    goto :goto_22

    .line 284
    :cond_80
    iget-wide v4, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-nez v4, :cond_8c

    .line 286
    iget-wide v4, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v4, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 288
    :cond_8c
    if-eqz v2, :cond_92

    .line 289
    iget-object v4, v6, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v4, p3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 291
    :cond_92
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 292
    return-void
.end method

.method private static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"  # J
    .param p3, "tracker"  # Lcom/android/server/usage/IntervalStats$EventTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 159
    .local v0, "token":J
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 164
    :cond_12
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 165
    goto :goto_2a

    .line 161
    :cond_1e
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 162
    nop

    .line 168
    :goto_2a
    goto :goto_4

    .line 167
    :cond_2b
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 168
    return-void
.end method

.method private static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V
    .registers 6
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
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
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 219
    .local v0, "category":Ljava/lang/String;
    const/4 v1, 0x0

    .line 221
    .local v1, "count":I
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    goto :goto_24

    .line 227
    :cond_10
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 229
    goto :goto_24

    .line 223
    :cond_1a
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 225
    nop

    .line 236
    :goto_24
    goto :goto_2

    .line 231
    :cond_25
    if-nez v0, :cond_31

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 234
    :cond_31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_38
    return-void
.end method

.method private static loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 10
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"  # J
    .param p3, "statsOut"  # Lcom/android/server/usage/IntervalStats;
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
    .local p4, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 300
    .local v0, "token":J
    invoke-virtual {p3, p0, p4}, Lcom/android/server/usage/IntervalStats;->buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 301
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 302
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 305
    iget-object v3, p3, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 306
    return-void

    .line 303
    :cond_15
    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "no package field present"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 16
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"  # J
    .param p3, "statsOut"  # Lcom/android/server/usage/IntervalStats;
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
    .local p4, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v4

    const-wide v5, 0x10900000001L

    if-eqz v4, :cond_26

    .line 72
    nop

    .line 73
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    .local v4, "stats":Landroid/app/usage/UsageStats;
    goto :goto_3b

    .line 74
    .end local v4  # "stats":Landroid/app/usage/UsageStats;
    :cond_26
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 76
    nop

    .line 77
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {p3, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v4

    .restart local v4  # "stats":Landroid/app/usage/UsageStats;
    goto :goto_3b

    .line 80
    .end local v4  # "stats":Landroid/app/usage/UsageStats;
    :cond_36
    new-instance v4, Landroid/app/usage/UsageStats;

    invoke-direct {v4}, Landroid/app/usage/UsageStats;-><init>()V

    .line 83
    .restart local v4  # "stats":Landroid/app/usage/UsageStats;
    :goto_3b
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_109

    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    packed-switch v7, :pswitch_data_11a

    goto/16 :goto_107

    .line 143
    :pswitch_4b  #0xb
    const-wide v7, 0x1030000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto/16 :goto_107

    .line 139
    :pswitch_58  #0xa
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x1030000000aL

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 141
    goto/16 :goto_107

    .line 134
    :pswitch_68  #0x9
    const-wide v7, 0x10300000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 136
    goto/16 :goto_107

    .line 130
    :pswitch_75  #0x8
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000008L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 132
    goto/16 :goto_107

    .line 123
    :pswitch_85  #0x7
    const-wide v7, 0x20b00000007L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 125
    .local v7, "chooserToken":J
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 126
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 127
    goto/16 :goto_107

    .line 119
    .end local v7  # "chooserToken":J
    :pswitch_96  #0x6
    const-wide v7, 0x10500000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 121
    goto :goto_107

    .line 115
    :pswitch_a2  #0x5
    const-wide v7, 0x10500000005L

    .line 116
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    iput v7, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 117
    goto :goto_107

    .line 111
    :pswitch_ae  #0x4
    const-wide v7, 0x10300000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 113
    goto :goto_107

    .line 107
    :pswitch_ba  #0x3
    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v9, 0x10300000003L

    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 109
    goto :goto_107

    .line 97
    :pswitch_c9  #0x2
    nop

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 97
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p3, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    .line 99
    .local v7, "tempPackageIndex":Landroid/app/usage/UsageStats;
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 100
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 101
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 102
    iget v8, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 103
    move-object v4, v7

    .line 104
    goto :goto_107

    .line 87
    .end local v7  # "tempPackageIndex":Landroid/app/usage/UsageStats;
    :pswitch_ec  #0x1
    nop

    .line 88
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {p3, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v7

    .line 89
    .local v7, "tempPackage":Landroid/app/usage/UsageStats;
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 90
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 91
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 92
    iget v8, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v8, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 93
    move-object v4, v7

    .line 94
    nop

    .line 145
    .end local v7  # "tempPackage":Landroid/app/usage/UsageStats;
    :goto_107
    goto/16 :goto_3b

    .line 148
    :cond_109
    iget-wide v2, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_115

    .line 150
    iget-wide v2, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 152
    :cond_115
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 153
    return-void

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_ec  #00000001
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
    .registers 8
    .param p0, "in"  # Ljava/io/InputStream;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 507
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    const/4 v1, 0x0

    .line 509
    .local v1, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 510
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 511
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 512
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->clear()V

    .line 515
    :goto_18
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ae

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_93

    const/4 v3, 0x3

    if-eq v2, v3, :cond_87

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7b

    packed-switch v2, :pswitch_data_be

    packed-switch v2, :pswitch_data_ca

    goto/16 :goto_ac

    .line 555
    :pswitch_33  #0x16
    const-wide v2, 0x20b00000016L

    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V

    .line 556
    goto/16 :goto_ac

    .line 552
    :pswitch_3d  #0x15
    const-wide v2, 0x20b00000015L

    invoke-static {v0, v2, v3, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V

    .line 553
    goto :goto_ac

    .line 549
    :pswitch_46  #0x14
    const-wide v2, 0x20b00000014L

    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V

    .line 550
    goto :goto_ac

    .line 541
    :pswitch_4f  #0xd
    const-wide v2, 0x10b0000000dL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 543
    goto :goto_ac

    .line 537
    :pswitch_5a  #0xc
    const-wide v2, 0x10b0000000cL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 539
    goto :goto_ac

    .line 533
    :pswitch_65  #0xb
    const-wide v2, 0x10b0000000bL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 535
    goto :goto_ac

    .line 529
    :pswitch_70  #0xa
    const-wide v2, 0x10b0000000aL

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 531
    goto :goto_ac

    .line 525
    :cond_7b
    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 527
    goto :goto_ac

    .line 521
    :cond_87
    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 523
    goto :goto_ac

    .line 545
    :cond_93
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProto;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object v1

    .line 546
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 547
    goto :goto_ac

    .line 517
    :cond_9d
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v4, 0x10300000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 519
    nop

    .line 563
    :goto_ac
    goto/16 :goto_18

    .line 558
    :cond_ae
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_ba

    .line 560
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

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
    .param p0, "proto"  # Landroid/util/proto/ProtoInputStream;
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
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->isNextField(J)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .local v2, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_24

    .line 50
    .end local v2  # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .restart local v2  # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_24
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    .line 53
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    goto :goto_3f

    .line 55
    :cond_33
    const-wide v3, 0x20900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_3f
    goto :goto_24

    .line 59
    :cond_40
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 60
    return-object v2
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 13
    .param p0, "out"  # Ljava/io/OutputStream;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 576
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v1, v3

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 577
    iget v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 578
    iget v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 580
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProto;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 582
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000aL

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 584
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000bL

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 586
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000cL

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 588
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000dL

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 591
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 592
    .local v7, "statsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_74
    if-ge v1, v7, :cond_89

    .line 593
    const-wide v2, 0x20b00000014L

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 594
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 593
    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 596
    .end local v1  # "i":I
    :cond_89
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 597
    .local v8, "configCount":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_91
    if-ge v9, v8, :cond_b8

    .line 598
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v10

    .line 599
    .local v10, "active":Z
    const-wide v2, 0x20b00000015L

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 600
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/usage/ConfigurationStats;

    .line 599
    move-object v1, v0

    move-object v4, p1

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 597
    .end local v10  # "active":Z
    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    .line 602
    .end local v9  # "i":I
    :cond_b8
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 603
    .local v1, "eventCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bf
    if-ge v2, v1, :cond_d2

    .line 604
    const-wide v3, 0x20b00000016L

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v5

    invoke-static {v0, v3, v4, p1, v5}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    .line 607
    .end local v2  # "i":I
    :cond_d2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 608
    return-void
.end method

.method private static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 10
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "usageStats"  # Landroid/app/usage/UsageStats;
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
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_51

    .line 371
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 373
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
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
    .local v4, "token":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 378
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V

    .line 379
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 370
    .end local v2  # "action":Ljava/lang/String;
    .end local v3  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4  # "token":J
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 381
    .end local v1  # "i":I
    :cond_51
    return-void

    .line 367
    .end local v0  # "chooserCountSize":I
    :cond_52
    :goto_52
    return-void
.end method

.method private static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 12
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p4, "configStats"  # Landroid/app/usage/ConfigurationStats;
    .param p5, "isActive"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 402
    .local v0, "token":J
    iget-object v2, p4, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 403
    iget-wide v2, p4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v4, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 405
    iget-wide v2, p4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 407
    iget v2, p4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 408
    const-wide v2, 0x10800000005L

    invoke-virtual {p0, v2, v3, p5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 409
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 411
    return-void
.end method

.method private static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 10
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "count"  # I
    .param p4, "time"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 357
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 358
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 359
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 360
    return-void
.end method

.method private static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V
    .registers 10
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
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
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 386
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_38

    .line 387
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 389
    .local v3, "count":I
    if-lez v3, :cond_35

    .line 390
    const-wide v4, 0x20b00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 391
    .local v4, "token":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 392
    const-wide v6, 0x10500000003L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 393
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 386
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "count":I
    .end local v4  # "token":J
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 396
    .end local v1  # "i":I
    :cond_38
    return-void
.end method

.method private static writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p4, "event"  # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 416
    .local v0, "token":J
    iget-object v2, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 417
    .local v2, "packageIndex":I
    const-string v3, ") not found in IntervalStats string cache"

    if-ltz v2, :cond_1b

    .line 418
    const-wide v4, 0x10500000002L

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_40

    .line 421
    :cond_1b
    sget-object v4, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Usage event package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-wide v4, 0x10900000001L

    iget-object v6, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 425
    :goto_40
    iget-object v4, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_7e

    .line 426
    iget-object v4, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v5, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 427
    .local v4, "classIndex":I
    if-ltz v4, :cond_59

    .line 428
    const-wide v5, 0x10500000004L

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7e

    .line 431
    :cond_59
    sget-object v5, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Usage event class name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-wide v5, 0x10900000003L

    iget-object v7, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 436
    .end local v4  # "classIndex":I
    :cond_7e
    :goto_7e
    const-wide v4, 0x10300000005L

    iget-wide v6, p4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 437
    const-wide v4, 0x10500000006L

    iget v6, p4, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 438
    const-wide v4, 0x10500000007L

    iget v6, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 439
    const-wide v4, 0x1050000000eL

    iget v6, p4, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 440
    iget-object v4, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_dd

    .line 441
    iget-object v4, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v5, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 442
    .local v4, "taskRootPackageIndex":I
    if-ltz v4, :cond_c2

    .line 443
    const-wide v5, 0x1050000000fL

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_dd

    .line 447
    :cond_c2
    sget-object v5, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Usage event task root package name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v4  # "taskRootPackageIndex":I
    :cond_dd
    :goto_dd
    iget-object v4, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v4, :cond_111

    .line 452
    iget-object v4, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v5, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 453
    .local v4, "taskRootClassIndex":I
    if-ltz v4, :cond_f6

    .line 454
    const-wide v5, 0x10500000010L

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_111

    .line 458
    :cond_f6
    sget-object v5, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Usage event task root class name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v4  # "taskRootClassIndex":I
    :cond_111
    :goto_111
    iget v4, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_180

    const/16 v5, 0x8

    if-eq v4, v5, :cond_171

    const/16 v5, 0xb

    if-eq v4, v5, :cond_162

    const/16 v5, 0xc

    if-eq v4, v5, :cond_123

    goto :goto_18e

    .line 479
    :cond_123
    iget-object v4, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v4, :cond_18e

    .line 480
    iget-object v4, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v5, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 482
    .local v4, "channelIndex":I
    if-ltz v4, :cond_13c

    .line 483
    const-wide v5, 0x1050000000dL

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_18e

    .line 487
    :cond_13c
    sget-object v5, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Usage event notification channel name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-wide v5, 0x1090000000cL

    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_18e

    .line 474
    .end local v4  # "channelIndex":I
    :cond_162
    iget v3, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v3, :cond_18e

    .line 475
    const-wide v3, 0x1050000000bL

    iget v5, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_18e

    .line 469
    :cond_171
    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v3, :cond_18e

    .line 470
    const-wide v3, 0x10900000009L

    iget-object v5, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_18e

    .line 464
    :cond_180
    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_18e

    .line 465
    iget-object v3, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 496
    :cond_18e
    :goto_18e
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 497
    return-void
.end method

.method private static writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
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
    .local v0, "token":J
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 312
    .local v2, "size":I
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 313
    const/4 v3, 0x0

    .local v3, "i":I
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
    .end local v3  # "i":I
    :cond_2d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 317
    return-void
.end method

.method private static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 14
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p4, "usageStats"  # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 323
    .local v0, "token":J
    iget-object v2, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 324
    .local v2, "packageIndex":I
    if-ltz v2, :cond_19

    .line 325
    const-wide v3, 0x10500000002L

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_40

    .line 328
    :cond_19
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsageStats package name ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") not found in IntervalStats string cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-wide v3, 0x10900000001L

    iget-object v5, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 333
    :goto_40
    const-wide v3, 0x10300000003L

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v5, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 335
    const-wide v3, 0x10300000004L

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 337
    const-wide v3, 0x10500000005L

    iget v5, p4, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 340
    const-wide v3, 0x10300000008L

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v5, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 342
    const-wide v3, 0x10300000009L

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 345
    const-wide v3, 0x1030000000aL

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v7, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v5, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 347
    const-wide v3, 0x1030000000bL

    iget-wide v5, p4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 349
    const-wide v3, 0x10500000006L

    iget v5, p4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 350
    invoke-static {p0, p4}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V

    .line 351
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 352
    return-void
.end method
