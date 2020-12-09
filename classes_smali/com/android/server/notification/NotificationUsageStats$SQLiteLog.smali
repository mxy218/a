.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteLog"
.end annotation


# static fields
.field private static final COL_ACTION_COUNT:Ljava/lang/String; = "action_count"

.field private static final COL_AIRTIME_EXPANDED_MS:Ljava/lang/String; = "expansion_airtime_ms"

.field private static final COL_AIRTIME_MS:Ljava/lang/String; = "airtime_ms"

.field private static final COL_CATEGORY:Ljava/lang/String; = "category"

.field private static final COL_DEFAULTS:Ljava/lang/String; = "defaults"

.field private static final COL_DEMOTED:Ljava/lang/String; = "demoted"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_IMPORTANCE_FINAL:Ljava/lang/String; = "importance_final"

.field private static final COL_IMPORTANCE_REQ:Ljava/lang/String; = "importance_request"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_MUTED:Ljava/lang/String; = "muted"

.field private static final COL_NOISY:Ljava/lang/String; = "noisy"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_UNDECORATED:Ljava/lang/String; = "undecorated"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x7

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_DISMISS:I = 0x4

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE:I = 0x3

.field private static final HORIZON_MS:J = 0x240c8400L

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final MSG_CLICK:I = 0x2

.field private static final MSG_DISMISS:I = 0x4

.field private static final MSG_POST:I = 0x1

.field private static final MSG_REMOVE:I = 0x3

.field private static final PRUNE_MIN_DELAY_MS:J = 0x1499700L

.field private static final PRUNE_MIN_WRITES:J = 0x400L

.field private static final STATS_QUERY:Ljava/lang/String; = "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted, SUM(undecorated) as undecorated FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static final UNDECORATED_QUERY:Ljava/lang/String; = "SELECT pkg, MAX(event_time_ms) as max_time FROM log WHERE undecorated> 0  AND event_time_ms > %d GROUP BY pkg"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "notification-sqlite-log"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1121
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    .line 1145
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    const-string/jumbo v5, "notification_log.db"

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 1033
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private getMidnightMs()J
    .registers 9

    .line 1265
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1266
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 1267
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1266
    const/16 v4, 0x17

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1268
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1209
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1210
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1211
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v2

    .line 1212
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    iget-wide v6, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v2, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted, SUM(undecorated) as undecorated FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1213
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1215
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_30
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_90

    .line 1216
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1217
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1218
    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_8c

    .line 1219
    :cond_45
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1220
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1221
    const/4 v9, 0x4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1222
    const/4 v10, 0x5

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1223
    const/4 v11, 0x6

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1224
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1225
    const-string/jumbo v13, "user_id"

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1226
    const-string/jumbo v2, "package"

    invoke-virtual {v12, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    const-string v2, "day"

    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1228
    const-string v2, "count"

    invoke-virtual {v12, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1229
    const-string/jumbo v2, "noisy"

    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1230
    const-string/jumbo v2, "muted"

    invoke-virtual {v12, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1231
    const-string v2, "demoted"

    invoke-virtual {v12, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1232
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1215
    :goto_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_2d .. :try_end_8f} :catchall_95

    goto :goto_30

    .line 1235
    :cond_90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1236
    nop

    .line 1237
    return-object v0

    .line 1235
    :catchall_95
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1294
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_17

    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_49

    .line 1296
    :cond_17
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1297
    sput-wide v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    .line 1298
    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 1299
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1300
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1299
    const-string v0, "log"

    const-string v1, "event_time_ms < ?"

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pruned event entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationSQLiteLog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_49
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 8

    .line 1311
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1313
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_24
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "when_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    .line 1319
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 1320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "importance_request"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "importance_final"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v0, :cond_67

    move v0, v3

    goto :goto_68

    :cond_67
    move v0, v4

    :goto_68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "demoted"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v5, "noisy"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1324
    const-string/jumbo v0, "muted"

    if-eqz v2, :cond_8b

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8b

    .line 1325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_92

    .line 1327
    :cond_8b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    :goto_92
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v0, :cond_a5

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_b5

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, p0

    goto :goto_b6

    :cond_b5
    nop

    .line 1332
    :goto_b6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "action_count"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    return-void
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4

    .line 1306
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "pkg"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4

    .line 1337
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "posttime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "airtime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1339
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expansion_count"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expansion_airtime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1341
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "first_expansion_time_ms"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1342
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .registers 8

    .line 1272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    iget-object v1, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "event_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "event_time_ms"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "event_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1277
    const/4 p1, 0x1

    if-ne p3, p1, :cond_34

    .line 1278
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    goto :goto_37

    .line 1280
    :cond_34
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1282
    :goto_37
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->hasUndecoratedRemoteView()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "undecorated"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1284
    const/4 p2, 0x0

    const-string p3, "log"

    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-gez p2, :cond_6e

    .line 1285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while trying to insert values: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationSQLiteLog"

    invoke-static {p3, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_6e
    sget-wide p2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    sput-wide p2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1289
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4

    .line 1345
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1346
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 6

    .line 1349
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1351
    :try_start_5
    const-string/jumbo v1, "post_frequency"

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1352
    const-string/jumbo v1, "since"

    iget-wide v2, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1353
    const-string/jumbo p1, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    .line 1356
    goto :goto_23

    .line 1354
    :catch_22
    move-exception p1

    .line 1357
    :goto_23
    return-object v0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 1197
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1198
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 1205
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1206
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 1193
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1194
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 19

    .line 1241
    move-object/from16 v0, p3

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v3

    .line 1243
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    iget-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v3, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted, SUM(undecorated) as undecorated FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1244
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1246
    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2e
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b6

    .line 1247
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1248
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1249
    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    move-object/from16 v5, p1

    move-object/from16 v13, p2

    goto :goto_b1

    .line 1250
    :cond_47
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1251
    const/4 v8, 0x3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1252
    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1253
    const/4 v10, 0x5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1254
    const/4 v11, 0x6

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1255
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "post_frequency{user_id="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pkg="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",day="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",count="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",muted="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",demoted="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    :goto_b1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b4
    .catchall {:try_start_2b .. :try_end_b4} :catchall_bb

    goto/16 :goto_2e

    .line 1260
    :cond_b6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1261
    nop

    .line 1262
    return-void

    .line 1260
    :catchall_bb
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public remoteViewAggStats(J)Lcom/android/server/notification/PulledStats;
    .registers 8

    .line 1361
    new-instance v0, Lcom/android/server/notification/PulledStats;

    invoke-direct {v0, p1, p2}, Lcom/android/server/notification/PulledStats;-><init>(J)V

    .line 1362
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1363
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "SELECT pkg, MAX(event_time_ms) as max_time FROM log WHERE undecorated> 0  AND event_time_ms > %d GROUP BY pkg"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1364
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1366
    :try_start_20
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_23
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1367
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1369
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/notification/PulledStats;->addUndecoratedPackage(Ljava/lang/String;J)V

    .line 1366
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_3d

    goto :goto_23

    .line 1372
    :cond_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1373
    nop

    .line 1374
    return-object v0

    .line 1372
    :catchall_3d
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method
