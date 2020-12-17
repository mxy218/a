.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final APP_LAUNCH_COUNT_ATTR:Ljava/lang/String; = "appLaunchCount"

.field private static final CATEGORY_TAG:Ljava/lang/String; = "category"

.field private static final CHOOSER_COUNT_TAG:Ljava/lang/String; = "chosen_action"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final FLAGS_ATTR:Ljava/lang/String; = "flags"

.field private static final INSTANCE_ID_ATTR:Ljava/lang/String; = "instanceId"

.field private static final INTERACTIVE_TAG:Ljava/lang/String; = "interactive"

.field private static final KEYGUARD_HIDDEN_TAG:Ljava/lang/String; = "keyguard-hidden"

.field private static final KEYGUARD_SHOWN_TAG:Ljava/lang/String; = "keyguard-shown"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final LAST_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "lastTimeServiceUsed"

.field private static final LAST_TIME_VISIBLE_ATTR:Ljava/lang/String; = "lastTimeVisible"

.field private static final MAJOR_VERSION_ATTR:Ljava/lang/String; = "majorVersion"

.field private static final MINOR_VERSION_ATTR:Ljava/lang/String; = "minorVersion"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NON_INTERACTIVE_TAG:Ljava/lang/String; = "non-interactive"

.field private static final NOTIFICATION_CHANNEL_ATTR:Ljava/lang/String; = "notificationChannel"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final SHORTCUT_ID_ATTR:Ljava/lang/String; = "shortcutId"

.field private static final STANDBY_BUCKET_ATTR:Ljava/lang/String; = "standbyBucket"

.field private static final TAG:Ljava/lang/String; = "UsageStatsXmlV1"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TOTAL_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "timeServiceUsed"

.field private static final TOTAL_TIME_VISIBLE_ATTR:Ljava/lang/String; = "timeVisible"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method

.method private static loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V
    .registers 9
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "usageStats"  # Landroid/app/usage/UsageStats;
    .param p2, "action"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    if-nez p2, :cond_3

    .line 157
    return-void

    .line 159
    :cond_3
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 162
    :cond_e
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    .local v0, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v0  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20
    :goto_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "eventCode":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    .line 169
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "tag":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    const-string v2, "chosen_action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 171
    goto :goto_61

    .line 173
    :cond_38
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3c

    .line 174
    goto :goto_20

    .line 176
    :cond_3c
    const-string v2, "category"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 177
    const-string/jumbo v2, "name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "category":Ljava/lang/String;
    const-string v3, "count"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "count":I
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v0  # "tag":Ljava/lang/String;
    .end local v2  # "category":Ljava/lang/String;
    .end local v3  # "count":I
    :cond_60
    goto :goto_20

    .line 182
    :cond_61
    :goto_61
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 187
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 192
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 195
    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 196
    const-string v2, "count"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 197
    const-string v2, "active"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 198
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 200
    :cond_35
    return-void
.end method

.method private static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 5
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tracker"  # Lcom/android/server/usage/IntervalStats$EventTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 148
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 149
    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 150
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 151
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const-string/jumbo v0, "package"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_92

    .line 208
    const-string v1, "class"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 212
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    const/4 v3, 0x0

    const-string v4, "flags"

    invoke-static {p0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 215
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "time"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 217
    const-string/jumbo v4, "type"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 220
    :try_start_31
    const-string/jumbo v4, "instanceId"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 223
    goto :goto_43

    .line 221
    :catch_3b
    move-exception v4

    .line 222
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "UsageStatsXmlV1"

    const-string v6, "Failed to parse mInstanceId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v4  # "e":Ljava/io/IOException;
    :goto_43
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_81

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v4, v5, :cond_71

    const/16 v5, 0xb

    if-eq v4, v5, :cond_67

    const/16 v3, 0xc

    if-eq v4, v3, :cond_56

    goto :goto_8e

    .line 238
    :cond_56
    nop

    .line 239
    const-string/jumbo v3, "notificationChannel"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "channelId":Ljava/lang/String;
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :cond_64
    iput-object v6, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_8e

    .line 235
    .end local v3  # "channelId":Ljava/lang/String;
    :cond_67
    const-string/jumbo v4, "standbyBucket"

    invoke-static {p0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 236
    goto :goto_8e

    .line 231
    :cond_71
    const-string/jumbo v3, "shortcutId"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :cond_7e
    iput-object v6, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 233
    goto :goto_8e

    .line 227
    .end local v3  # "id":Ljava/lang/String;
    :cond_81
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 228
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 229
    nop

    .line 243
    :goto_8e
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 244
    return-void

    .line 206
    .end local v1  # "className":Ljava/lang/String;
    .end local v2  # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_92
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "no package attribute present"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const-string v0, "UsageStatsXmlV1"

    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_ab

    .line 91
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v3

    .line 94
    .local v3, "stats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeActive"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 98
    :try_start_1c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeVisible"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_29

    .line 102
    goto :goto_2f

    .line 100
    :catch_29
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mLastTimeVisible"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v4  # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v6, "lastTimeServiceUsed"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_3c

    .line 109
    goto :goto_42

    .line 107
    :catch_3c
    move-exception v4

    .line 108
    .restart local v4  # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mLastTimeForegroundServiceUsed"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v4  # "e":Ljava/io/IOException;
    :goto_42
    const-string/jumbo v4, "timeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 114
    :try_start_4b
    const-string/jumbo v4, "timeVisible"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_55

    .line 117
    goto :goto_5b

    .line 115
    :catch_55
    move-exception v4

    .line 116
    .restart local v4  # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mTotalTimeVisible"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v4  # "e":Ljava/io/IOException;
    :goto_5b
    :try_start_5b
    const-string/jumbo v4, "timeServiceUsed"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_65

    .line 124
    goto :goto_6b

    .line 122
    :catch_65
    move-exception v4

    .line 123
    .restart local v4  # "e":Ljava/io/IOException;
    const-string v5, "Failed to parse mTotalTimeForegroundServiceUsed"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v4  # "e":Ljava/io/IOException;
    :goto_6b
    const-string/jumbo v0, "lastEvent"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 127
    const/4 v0, 0x0

    const-string v4, "appLaunchCount"

    invoke-static {p0, v4, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 130
    :goto_7d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v4, v0

    .local v4, "eventCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_aa

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "tag":Ljava/lang/String;
    const/4 v5, 0x3

    if-ne v4, v5, :cond_93

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 133
    goto :goto_aa

    .line 135
    :cond_93
    const/4 v5, 0x2

    if-eq v4, v5, :cond_97

    .line 136
    goto :goto_7d

    .line 138
    :cond_97
    const-string v5, "chosen_action"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 139
    const-string/jumbo v5, "name"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "action":Ljava/lang/String;
    invoke-static {p0, v3, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V

    .line 142
    .end local v0  # "tag":Ljava/lang/String;
    .end local v5  # "action":Ljava/lang/String;
    :cond_a9
    goto :goto_7d

    .line 143
    :cond_aa
    :goto_aa
    return-void

    .line 89
    .end local v3  # "stats":Landroid/app/usage/UsageStats;
    .end local v4  # "eventCode":I
    :cond_ab
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "no package attribute present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const-string v0, "UsageStatsXmlV1"

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 385
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 386
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 387
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 389
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "endTime"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 391
    :try_start_1f
    const-string/jumbo v1, "majorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    .line 394
    goto :goto_2f

    .line 392
    :catch_29
    move-exception v1

    .line 393
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to parse majorVersion"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v1  # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    const-string/jumbo v1, "minorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_39

    .line 400
    goto :goto_3f

    .line 398
    :catch_39
    move-exception v1

    .line 399
    .restart local v1  # "e":Ljava/io/IOException;
    const-string v2, "Failed to parse minorVersion"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v1  # "e":Ljava/io/IOException;
    :goto_3f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 404
    .local v0, "outerDepth":I
    :goto_43
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "eventCode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_da

    const/4 v1, 0x3

    if-ne v2, v1, :cond_54

    .line 405
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_da

    .line 406
    :cond_54
    const/4 v4, 0x2

    if-eq v2, v4, :cond_58

    .line 407
    goto :goto_43

    .line 410
    :cond_58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "tag":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_dc

    :cond_64
    goto :goto_af

    :sswitch_65
    const-string/jumbo v1, "interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x0

    goto :goto_b0

    :sswitch_70
    const-string/jumbo v1, "keyguard-shown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v3, v4

    goto :goto_b0

    :sswitch_7b
    const-string v1, "event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x6

    goto :goto_b0

    :sswitch_85
    const-string/jumbo v1, "package"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x4

    goto :goto_b0

    :sswitch_90
    const-string/jumbo v1, "non-interactive"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_b0

    :sswitch_9a
    const-string/jumbo v3, "keyguard-hidden"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v1

    goto :goto_b0

    :sswitch_a5
    const-string v1, "config"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x5

    goto :goto_b0

    :goto_af
    move v3, v6

    :goto_b0
    packed-switch v3, :pswitch_data_fa

    goto :goto_d8

    .line 437
    :pswitch_b4  #0x6
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_d8

    .line 433
    :pswitch_b8  #0x5
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 434
    goto :goto_d8

    .line 429
    :pswitch_bc  #0x4
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 430
    goto :goto_d8

    .line 425
    :pswitch_c0  #0x3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 426
    goto :goto_d8

    .line 421
    :pswitch_c6  #0x2
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 422
    goto :goto_d8

    .line 417
    :pswitch_cc  #0x1
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 418
    goto :goto_d8

    .line 413
    :pswitch_d2  #0x0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 414
    nop

    .line 440
    .end local v5  # "tag":Ljava/lang/String;
    :goto_d8
    goto/16 :goto_43

    .line 441
    :cond_da
    return-void

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x50c07cbe -> :sswitch_a5
        -0x45b2e24f -> :sswitch_9a
        -0x301c401e -> :sswitch_90
        -0x301acbba -> :sswitch_85
        0x5c6729a -> :sswitch_7b
        0x1f63682a -> :sswitch_70
        0x6deacee2 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_d2  #00000000
        :pswitch_cc  #00000001
        :pswitch_c6  #00000002
        :pswitch_c0  #00000003
        :pswitch_bc  #00000004
        :pswitch_b8  #00000005
        :pswitch_b4  #00000006
    .end packed-switch
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v0, v2

    const-string v2, "endTime"

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 453
    iget v0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-string/jumbo v1, "majorVersion"

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 454
    iget v0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-string/jumbo v1, "minorVersion"

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 456
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string/jumbo v3, "interactive"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    .line 458
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string/jumbo v3, "non-interactive"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    .line 460
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string/jumbo v3, "keyguard-shown"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    .line 462
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string/jumbo v3, "keyguard-hidden"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    .line 465
    const-string/jumbo v0, "packages"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 467
    .local v2, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    if-ge v3, v2, :cond_70

    .line 468
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v4}, Lcom/android/server/usage/UsageStatsXmlV1;->writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 470
    .end local v3  # "i":I
    :cond_70
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const-string v0, "configurations"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 474
    .local v3, "configCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7f
    if-ge v4, v3, :cond_9d

    .line 475
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 476
    .local v5, "active":Z
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-static {p0, p1, v6, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 474
    .end local v5  # "active":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 478
    .end local v4  # "i":I
    :cond_9d
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    const-string v0, "event-log"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    .line 482
    .local v4, "eventCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ac
    if-ge v5, v4, :cond_ba

    .line 483
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcom/android/server/usage/UsageStatsXmlV1;->writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 482
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 485
    .end local v5  # "i":I
    :cond_ba
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    return-void
.end method

.method private static writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V
    .registers 9
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "usageStats"  # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    if-eqz p1, :cond_4d

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4d

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 281
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4d

    .line 284
    :cond_13
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 285
    .local v0, "chooserCountSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_4c

    .line 286
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 288
    .local v3, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 289
    goto :goto_49

    .line 291
    :cond_37
    const-string v4, "chosen_action"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const-string/jumbo v6, "name"

    invoke-static {p0, v6, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountsForAction(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V

    .line 294
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    .end local v2  # "action":Ljava/lang/String;
    .end local v3  # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 296
    .end local v1  # "i":I
    :cond_4c
    return-void

    .line 282
    .end local v0  # "chooserCountSize":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 10
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "configStats"  # Landroid/app/usage/ConfigurationStats;
    .param p3, "isActive"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 321
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-string/jumbo v4, "timeActive"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 322
    iget v2, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-string v3, "count"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 323
    if-eqz p3, :cond_28

    .line 324
    const/4 v2, 0x1

    const-string v3, "active"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 328
    :cond_28
    iget-object v2, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v2}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 330
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    return-void
.end method

.method private static writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V
    .registers 7
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "count"  # I
    .param p3, "time"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    const-string v1, "count"

    invoke-static {p0, v1, p2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 274
    const-string/jumbo v1, "time"

    invoke-static {p0, v1, p3, p4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 275
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    return-void
.end method

.method private static writeCountsForAction(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .registers 9
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
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

    .line 300
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 301
    .local v0, "countsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_30

    .line 302
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 304
    .local v3, "count":I
    if-lez v3, :cond_2d

    .line 305
    const-string v4, "category"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v6, "name"

    invoke-static {p0, v6, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 307
    const-string v6, "count"

    invoke-static {p0, v6, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 308
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "count":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 311
    .end local v1  # "i":I
    :cond_30
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 9
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "event"  # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const-string v0, "event"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "time"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 340
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 341
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 342
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v3, "class"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    :cond_24
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v3, "flags"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 345
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-string/jumbo v3, "type"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 346
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    const-string/jumbo v3, "instanceId"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 348
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_74

    const/16 v3, 0x8

    if-eq v2, v3, :cond_67

    const/16 v3, 0xb

    if-eq v2, v3, :cond_5a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4d

    goto :goto_7d

    .line 365
    :cond_4d
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 366
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string/jumbo v3, "notificationChannel"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 360
    :cond_5a
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz v2, :cond_7d

    .line 361
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const-string/jumbo v3, "standbyBucket"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    goto :goto_7d

    .line 355
    :cond_67
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 356
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v3, "shortcutId"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 350
    :cond_74
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_7d

    .line 351
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v2}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 372
    :cond_7d
    :goto_7d
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    return-void
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 9
    .param p0, "xml"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"  # Lcom/android/server/usage/IntervalStats;
    .param p2, "usageStats"  # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "lastTimeActive"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 253
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "lastTimeVisible"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 255
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "lastTimeServiceUsed"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 257
    iget-object v2, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 258
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-string/jumbo v4, "timeActive"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 259
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-string/jumbo v4, "timeVisible"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 260
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-string/jumbo v4, "timeServiceUsed"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 262
    iget v2, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const-string/jumbo v3, "lastEvent"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 263
    iget v2, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    if-lez v2, :cond_58

    .line 264
    iget v2, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-string v3, "appLaunchCount"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 266
    :cond_58
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V

    .line 267
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    return-void
.end method
