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
    .registers 6
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
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_20
    :goto_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    .line 169
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 170
    const/4 v2, 0x3

    if-ne v0, v2, :cond_37

    const-string v2, "chosen_action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 171
    goto :goto_60

    .line 173
    :cond_37
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    .line 174
    goto :goto_20

    .line 176
    :cond_3b
    const-string v0, "category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 177
    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "count"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 179
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_5f
    goto :goto_20

    .line 182
    :cond_60
    :goto_60
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
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
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v0

    .line 192
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "lastTimeActive"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 195
    const-string/jumbo v1, "timeActive"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 196
    const-string v1, "count"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 197
    const-string v1, "active"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 198
    iget-object p0, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 200
    :cond_34
    return-void
.end method

.method private static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 5
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
    .registers 8
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
    if-eqz v0, :cond_91

    .line 208
    const-string v1, "class"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    const-string v2, "flags"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 215
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v4, "time"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 217
    const-string/jumbo v2, "type"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 220
    :try_start_31
    const-string v2, "instanceId"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3a

    .line 223
    goto :goto_42

    .line 221
    :catch_3a
    move-exception v2

    .line 222
    const-string v3, "UsageStatsXmlV1"

    const-string v4, "Failed to parse mInstanceId"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :goto_42
    iget v2, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_80

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v2, v3, :cond_70

    const/16 v3, 0xb

    if-eq v2, v3, :cond_66

    const/16 v1, 0xc

    if-eq v2, v1, :cond_55

    goto :goto_8d

    .line 238
    :cond_55
    nop

    .line 239
    const-string/jumbo v1, "notificationChannel"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 240
    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_63
    iput-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_8d

    .line 235
    :cond_66
    const-string/jumbo v2, "standbyBucket"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 236
    goto :goto_8d

    .line 231
    :cond_70
    const-string/jumbo v1, "shortcutId"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    if-eqz p0, :cond_7d

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_7d
    iput-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 233
    goto :goto_8d

    .line 227
    :cond_80
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 228
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v1}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 229
    nop

    .line 243
    :goto_8d
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 244
    return-void

    .line 206
    :cond_91
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package attribute present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
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
    if-eqz v2, :cond_a6

    .line 91
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    .line 94
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v5, "lastTimeActive"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 98
    :try_start_1b
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v5, "lastTimeVisible"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_27

    .line 102
    goto :goto_2d

    .line 100
    :catch_27
    move-exception v3

    .line 101
    const-string v3, "Failed to parse mLastTimeVisible"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_2d
    :try_start_2d
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string p1, "lastTimeServiceUsed"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_39

    .line 109
    goto :goto_3f

    .line 107
    :catch_39
    move-exception p1

    .line 108
    const-string p1, "Failed to parse mLastTimeForegroundServiceUsed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_3f
    const-string/jumbo p1, "timeActive"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 114
    :try_start_48
    const-string/jumbo p1, "timeVisible"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_51} :catch_52

    .line 117
    goto :goto_58

    .line 115
    :catch_52
    move-exception p1

    .line 116
    const-string p1, "Failed to parse mTotalTimeVisible"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_58
    :try_start_58
    const-string/jumbo p1, "timeServiceUsed"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_62

    .line 124
    goto :goto_68

    .line 122
    :catch_62
    move-exception p1

    .line 123
    const-string p1, "Failed to parse mTotalTimeForegroundServiceUsed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_68
    const-string p1, "lastEvent"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 127
    const/4 p1, 0x0

    const-string v0, "appLaunchCount"

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 130
    :goto_79
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a5

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 133
    goto :goto_a5

    .line 135
    :cond_8e
    const/4 v3, 0x2

    if-eq p1, v3, :cond_92

    .line 136
    goto :goto_79

    .line 138
    :cond_92
    const-string p1, "chosen_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 139
    const-string/jumbo p1, "name"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p0, v2, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V

    .line 142
    :cond_a4
    goto :goto_79

    .line 143
    :cond_a5
    :goto_a5
    return-void

    .line 89
    :cond_a6
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package attribute present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
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
    const-string v1, "majorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_28

    .line 394
    goto :goto_2e

    .line 392
    :catch_28
    move-exception v1

    .line 393
    const-string v2, "Failed to parse majorVersion"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :goto_2e
    :try_start_2e
    const-string v1, "minorVersion"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_37

    .line 400
    goto :goto_3d

    .line 398
    :catch_37
    move-exception v1

    .line 399
    const-string v2, "Failed to parse minorVersion"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    :goto_3d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 404
    :goto_41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_51

    .line 405
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_d4

    .line 406
    :cond_51
    const/4 v4, 0x2

    if-eq v1, v4, :cond_55

    .line 407
    goto :goto_41

    .line 410
    :cond_55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 411
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d6

    :cond_61
    goto :goto_a9

    :sswitch_62
    const-string v2, "interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v2, 0x0

    goto :goto_aa

    :sswitch_6c
    const-string v2, "keyguard-shown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v4

    goto :goto_aa

    :sswitch_76
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v2, 0x6

    goto :goto_aa

    :sswitch_80
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v2, 0x4

    goto :goto_aa

    :sswitch_8b
    const-string/jumbo v3, "non-interactive"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_aa

    :sswitch_95
    const-string v2, "keyguard-hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v2, v3

    goto :goto_aa

    :sswitch_9f
    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v2, 0x5

    goto :goto_aa

    :goto_a9
    move v2, v5

    :goto_aa
    packed-switch v2, :pswitch_data_f4

    goto :goto_d2

    .line 437
    :pswitch_ae  #0x6
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_d2

    .line 433
    :pswitch_b2  #0x5
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 434
    goto :goto_d2

    .line 429
    :pswitch_b6  #0x4
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 430
    goto :goto_d2

    .line 425
    :pswitch_ba  #0x3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 426
    goto :goto_d2

    .line 421
    :pswitch_c0  #0x2
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 422
    goto :goto_d2

    .line 417
    :pswitch_c6  #0x1
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 418
    goto :goto_d2

    .line 413
    :pswitch_cc  #0x0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 414
    nop

    .line 440
    :goto_d2
    goto/16 :goto_41

    .line 441
    :cond_d4
    return-void

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x50c07cbe -> :sswitch_9f
        -0x45b2e24f -> :sswitch_95
        -0x301c401e -> :sswitch_8b
        -0x301acbba -> :sswitch_80
        0x5c6729a -> :sswitch_76
        0x1f63682a -> :sswitch_6c
        0x6deacee2 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_cc  #00000000
        :pswitch_c6  #00000001
        :pswitch_c0  #00000002
        :pswitch_ba  #00000003
        :pswitch_b6  #00000004
        :pswitch_b2  #00000005
        :pswitch_ae  #00000006
    .end packed-switch
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
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

    const-string v1, "majorVersion"

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 454
    iget v0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-string v1, "minorVersion"

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 456
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string v3, "interactive"

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

    const-string v3, "keyguard-shown"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V

    .line 462
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v0, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-string v3, "keyguard-hidden"

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
    const/4 v3, 0x0

    move v4, v3

    :goto_5c
    if-ge v4, v2, :cond_6c

    .line 468
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 470
    :cond_6c
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const-string v0, "configurations"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 474
    move v4, v3

    :goto_7b
    if-ge v4, v2, :cond_99

    .line 475
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    .line 476
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-static {p0, p1, v6, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 478
    :cond_99
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    const-string v0, "event-log"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v2

    .line 482
    nop

    :goto_a8
    if-ge v3, v2, :cond_b6

    .line 483
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v3}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/android/server/usage/UsageStatsXmlV1;->writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 485
    :cond_b6
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    return-void
.end method

.method private static writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V
    .registers 9
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
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_4c

    .line 286
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 288
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
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 296
    :cond_4c
    return-void

    .line 282
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 10
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

    const-string p1, "lastTimeActive"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 321
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-string/jumbo p1, "timeActive"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 322
    iget p1, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-string v2, "count"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 323
    if-eqz p3, :cond_27

    .line 324
    const/4 p1, 0x1

    const-string p3, "active"

    invoke-static {p0, p3, p1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 328
    :cond_27
    iget-object p1, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, p1}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 330
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    return-void
.end method

.method private static writeCountAndTime(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;IJ)V
    .registers 7
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
    const-string/jumbo p2, "time"

    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 275
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    return-void
.end method

.method private static writeCountsForAction(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .registers 9
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
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 301
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_30

    .line 302
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 304
    if-lez v3, :cond_2d

    .line 305
    const-string v4, "category"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v6, "name"

    invoke-static {p0, v6, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 307
    const-string v2, "count"

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 308
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 311
    :cond_30
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 9
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

    const-string/jumbo p1, "time"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 340
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz p1, :cond_24

    .line 342
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v2, "class"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    :cond_24
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v2, "flags"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 345
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-string/jumbo v2, "type"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 346
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    const-string v2, "instanceId"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 348
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_73

    const/16 v2, 0x8

    if-eq p1, v2, :cond_66

    const/16 v2, 0xb

    if-eq p1, v2, :cond_59

    const/16 v2, 0xc

    if-eq p1, v2, :cond_4c

    goto :goto_7c

    .line 365
    :cond_4c
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_7c

    .line 366
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string/jumbo p2, "notificationChannel"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7c

    .line 360
    :cond_59
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_7c

    .line 361
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const-string/jumbo p2, "standbyBucket"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    goto :goto_7c

    .line 355
    :cond_66
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_7c

    .line 356
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string/jumbo p2, "shortcutId"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7c

    .line 350
    :cond_73
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_7c

    .line 351
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, p1}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 372
    :cond_7c
    :goto_7c
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    return-void
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 9
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

    const-string v4, "lastTimeActive"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 253
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string v4, "lastTimeVisible"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 255
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    const-string p1, "lastTimeServiceUsed"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 257
    iget-object p1, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 258
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-string/jumbo p1, "timeActive"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 259
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-string/jumbo p1, "timeVisible"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 260
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-string/jumbo p1, "timeServiceUsed"

    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 262
    iget p1, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const-string v2, "lastEvent"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 263
    iget p1, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    if-lez p1, :cond_54

    .line 264
    iget p1, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-string v2, "appLaunchCount"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 266
    :cond_54
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsXmlV1;->writeChooserCounts(Lorg/xmlpull/v1/XmlSerializer;Landroid/app/usage/UsageStats;)V

    .line 267
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    return-void
.end method
