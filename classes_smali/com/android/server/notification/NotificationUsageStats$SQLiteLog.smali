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

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x5

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

.field private static final STATS_QUERY:Ljava/lang/String; = "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "notification-sqlite-log"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1098
    .local v0, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1099
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    .line 1123
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    const-string/jumbo v6, "notification_log.db"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p1, "x1"  # J
    .param p3, "x2"  # I
    .param p4, "x3"  # Lcom/android/server/notification/NotificationRecord;

    .line 1020
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private getMidnightMs()J
    .registers 9

    .line 1242
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1243
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1244
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 1243
    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1245
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 20
    .param p1, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1186
    move-object/from16 v1, p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v0

    .line 1187
    .local v2, "frequencies":Lorg/json/JSONArray;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1188
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v5

    .line 1189
    .local v5, "midnight":J
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-wide v10, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1190
    .local v7, "q":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1192
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_32
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_9e

    .line 1193
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1194
    .local v11, "userId":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1195
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4a

    goto :goto_95

    .line 1196
    :cond_4a
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1197
    .local v13, "day":I
    const/4 v14, 0x3

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1198
    .local v14, "count":I
    const/4 v15, 0x4

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1199
    .local v15, "muted":I
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1200
    .local v0, "noisy":I
    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1201
    .local v9, "demoted":I
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v16

    .line 1202
    .local v17, "row":Lorg/json/JSONObject;
    const-string/jumbo v10, "user_id"

    move-object/from16 v1, v17

    .end local v17  # "row":Lorg/json/JSONObject;
    .local v1, "row":Lorg/json/JSONObject;
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1203
    const-string/jumbo v10, "package"

    invoke-virtual {v1, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1204
    const-string v10, "day"

    invoke-virtual {v1, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1205
    const-string v10, "count"

    invoke-virtual {v1, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1206
    const-string/jumbo v10, "noisy"

    invoke-virtual {v1, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1207
    const-string/jumbo v10, "muted"

    invoke-virtual {v1, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1208
    const-string v10, "demoted"

    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1209
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1192
    .end local v0  # "noisy":I
    .end local v1  # "row":Lorg/json/JSONObject;
    .end local v9  # "demoted":I
    .end local v11  # "userId":I
    .end local v12  # "pkg":Ljava/lang/String;
    .end local v13  # "day":I
    .end local v14  # "count":I
    .end local v15  # "muted":I
    :goto_95
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_98
    .catchall {:try_start_32 .. :try_end_98} :catchall_a3

    move-object/from16 v1, p1

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_35

    .line 1212
    :cond_9e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1213
    nop

    .line 1214
    return-object v2

    .line 1212
    :catchall_a3
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;

    .line 1269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1270
    .local v0, "nowMs":J
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_17

    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    .line 1272
    :cond_17
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1273
    sput-wide v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    .line 1274
    const-wide/32 v2, 0x240c8400

    sub-long v2, v0, v2

    .line 1275
    .local v2, "horizonStartMs":J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1276
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1275
    const-string/jumbo v5, "log"

    const-string v6, "event_time_ms < ?"

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1277
    .local v4, "deletedRows":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruned event entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationSQLiteLog"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    .end local v2  # "horizonStartMs":J
    .end local v4  # "deletedRows":I
    :cond_4b
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 9
    .param p0, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"  # Landroid/content/ContentValues;

    .line 1287
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1289
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_24
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "when_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1293
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 1294
    .local v0, "before":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    .line 1295
    .local v1, "after":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 1296
    .local v2, "noisy":Z
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "importance_request"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "importance_final"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v0, :cond_69

    move v5, v3

    goto :goto_6a

    :cond_69
    move v5, v4

    :goto_6a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "demoted"

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "noisy"

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1300
    const-string/jumbo v5, "muted"

    if-eqz v2, :cond_8d

    const/4 v6, 0x4

    if-ge v1, v6, :cond_8d

    .line 1301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_94

    .line 1303
    :cond_8d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    :goto_94
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_a7

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v5, "category"

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_b7

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v3

    goto :goto_b8

    :cond_b7
    nop

    .line 1308
    :goto_b8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "action_count"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    return-void
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4
    .param p0, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"  # Landroid/content/ContentValues;

    .line 1282
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4
    .param p0, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"  # Landroid/content/ContentValues;

    .line 1313
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "posttime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "airtime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expansion_count"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expansion_airtime_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "first_expansion_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1318
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .registers 11
    .param p1, "eventTimeMs"  # J
    .param p3, "eventType"  # I
    .param p4, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 1249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1250
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "event_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "event_time_ms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "event_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1254
    const/4 v1, 0x1

    if-ne p3, v1, :cond_34

    .line 1255
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    goto :goto_37

    .line 1257
    :cond_34
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1259
    :goto_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1260
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const-string/jumbo v3, "log"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_61

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while trying to insert values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationSQLiteLog"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_61
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1264
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1265
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "indent"  # Ljava/lang/String;
    .param p3, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1321
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1322
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1327
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "post_frequency"

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    const-string/jumbo v1, "since"

    iget-wide v2, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1329
    const-string/jumbo v1, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    .line 1332
    goto :goto_23

    .line 1330
    :catch_22
    move-exception v1

    .line 1333
    :goto_23
    return-object v0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 1174
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 1182
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1183
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 1170
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 1178
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1179
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 20
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "indent"  # Ljava/lang/String;
    .param p3, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1218
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1219
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v4

    .line 1220
    .local v4, "midnight":J
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1221
    .local v6, "q":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1223
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2f
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_c2

    .line 1224
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1225
    .local v10, "userId":I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1226
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_48

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    goto :goto_b2

    .line 1227
    :cond_48
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1228
    .local v12, "day":I
    const/4 v13, 0x3

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1229
    .local v13, "count":I
    const/4 v14, 0x4

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1230
    .local v14, "muted":I
    const/4 v15, 0x5

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1231
    .local v15, "noisy":I
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1232
    .local v0, "demoted":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_65
    .catchall {:try_start_2c .. :try_end_65} :catchall_cb

    move-object/from16 v9, p2

    :try_start_67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "post_frequency{user_id="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",day="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",muted="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",demoted="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_ad
    .catchall {:try_start_67 .. :try_end_ad} :catchall_be

    move-object/from16 v8, p1

    :try_start_af
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    .end local v0  # "demoted":I
    .end local v10  # "userId":I
    .end local v11  # "pkg":Ljava/lang/String;
    .end local v12  # "day":I
    .end local v13  # "count":I
    .end local v14  # "muted":I
    .end local v15  # "noisy":I
    :goto_b2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_bc

    move-object/from16 v1, p3

    const/4 v0, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_2f

    .line 1237
    :catchall_bc
    move-exception v0

    goto :goto_d0

    :catchall_be
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_d0

    :cond_c2
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1238
    nop

    .line 1239
    return-void

    .line 1237
    :catchall_cb
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    :goto_d0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
