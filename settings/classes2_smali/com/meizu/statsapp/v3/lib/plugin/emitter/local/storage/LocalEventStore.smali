.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;
.super Ljava/lang/Object;
.source "LocalEventStore.java"


# static fields
.field private static TAG:Ljava/lang/String; = "LocalEventStore"


# instance fields
.field private final CLEAR_KEEP_LIMIT:I

.field private final CLEAR_THRESHOLD:I

.field private final ONCE_EMIT_LIMIT:I

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

.field private encrypt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 38
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->ONCE_EMIT_LIMIT:I

    const/16 v0, 0x2710

    .line 39
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->CLEAR_THRESHOLD:I

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->CLEAR_KEEP_LIMIT:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->encrypt:Z

    .line 53
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->context:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->init(Landroid/content/Context;)V

    .line 55
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->dbHelper:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    .line 56
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->open()V

    .line 57
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 58
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private declared-synchronized getSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    .line 282
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_13

    .line 284
    :try_start_7
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide p1

    :catchall_f
    move-exception p1

    .line 286
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    :cond_13
    const-wide/16 p1, 0x0

    .line 289
    monitor-exit p0

    return-wide p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isDatabaseOpen()Z
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-nez p0, :cond_16

    .line 84
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->TAG:Ljava/lang/String;

    const-string v1, "database NOT open!"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return p0
.end method

.method private declared-synchronized open()V
    .registers 2

    monitor-enter p0

    .line 67
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    if-nez v0, :cond_14

    .line 69
    :try_start_7
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->dbHelper:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception v0

    .line 71
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    .line 74
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized queryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8d

    if-eqz v1, :cond_8b

    .line 248
    :try_start_c
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 250
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_83

    .line 251
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 252
    :goto_22
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_83

    .line 253
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    invoke-direct {p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;-><init>()V

    const-string p3, "eventId"

    .line 254
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setId(J)V

    const-string p3, "eventSessionId"

    .line 255
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setSessionId(Ljava/lang/String;)V

    const-string p3, "eventSource"

    .line 256
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setEventSource(Ljava/lang/String;)V

    const-string p3, "encrypt"

    .line 257
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setEncrypt(I)V

    const-string p3, "eventData"

    .line 258
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setEventData(Ljava/lang/String;)V

    const-string p3, "dateCreated"

    .line 259
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setDateCreated(Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_22

    .line 264
    :cond_83
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_c .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception p1

    .line 266
    :try_start_88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8d

    .line 269
    :cond_8b
    :goto_8b
    monitor-exit p0

    return-object v0

    :catchall_8d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearOldEventsIfNecessary()V
    .registers 6

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 221
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getEventsCount(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_34

    .line 223
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear old events, amount of events currently in the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from events where (eventId not in (select eventId from events order by eventId desc limit 1000))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v0

    .line 229
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    .line 232
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAscEventsLimit(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "events"

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId ASC LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    .line 419
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEmittableEvents()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3e

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    const/16 v2, 0xc8

    .line 306
    :try_start_f
    invoke-virtual {p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getAscEventsLimit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    .line 307
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getId()J

    move-result-wide v3

    .line 308
    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->toPayload(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 310
    new-instance v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    const-string v6, ""

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;-><init>(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_38

    goto :goto_17

    :catchall_38
    move-exception v1

    .line 314
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    .line 317
    :cond_3c
    monitor-exit p0

    return-object v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventByRowId(J)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;
    .registers 7

    monitor-enter p0

    .line 362
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    :try_start_8
    const-string v0, "events"

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 367
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_32

    const/4 p2, 0x0

    .line 368
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    .line 371
    :try_start_2f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 374
    :cond_32
    monitor-exit p0

    return-object v1

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventsCount(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    .line 343
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-eqz v0, :cond_15

    .line 345
    :try_start_7
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    invoke-static {v0, v1, p1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception p1

    .line 347
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    :cond_15
    const-wide/16 v0, 0x0

    .line 350
    monitor-exit p0

    return-wide v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventsMax500()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3e

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    .line 324
    :try_start_f
    invoke-virtual {p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getAscEventsLimit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    .line 325
    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getId()J

    move-result-wide v3

    .line 326
    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->toPayload(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 328
    new-instance v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    const-string v6, ""

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;-><init>(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_38

    goto :goto_17

    :catchall_38
    move-exception v1

    .line 332
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    .line 335
    :cond_3c
    monitor-exit p0

    return-object v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastResetTime()J
    .registers 14

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 163
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_33

    if-eqz v2, :cond_31

    .line 165
    :try_start_9
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    const-string v5, "emitterMiscellaneous"

    const-string v2, "lastResetTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 170
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 172
    :cond_29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v2

    .line 174
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_33

    .line 177
    :cond_31
    :goto_31
    monitor-exit p0

    return-wide v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTraffic()I
    .registers 13

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 184
    :try_start_8
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const-string v4, "emitterMiscellaneous"

    const-string v0, "traffic"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 189
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 191
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    .line 193
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    .line 196
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v1

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J
    .registers 7

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 110
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_67

    if-eqz v2, :cond_4f

    .line 112
    :try_start_9
    iget-boolean v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->encrypt:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->fromPayload(ILcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    move-result-object p1

    .line 113
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "eventSessionId"

    .line 114
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "eventSource"

    .line 115
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getEventSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "encrypt"

    .line 116
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getEncrypt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "eventData"

    .line 117
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getEventData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p1

    .line 120
    :try_start_4c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    :cond_4f
    :goto_4f
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_67

    .line 124
    monitor-exit p0

    return-wide v0

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeEvent(J)Z
    .registers 8

    monitor-enter p0

    const/4 v0, -0x1

    .line 207
    :try_start_2
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_44

    if-eqz v1, :cond_27

    .line 209
    :try_start_8
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v1

    .line 211
    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    :cond_27
    :goto_27
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed event, eventId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_44

    const/4 p1, 0x1

    if-ne v0, p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    .line 215
    :goto_42
    monitor-exit p0

    return p1

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEncrypt(Z)V
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iput-boolean p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->encrypt:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 98
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLastResetTime(J)V
    .registers 8

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_39

    if-eqz v0, :cond_37

    .line 130
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "lastResetTime"

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "emitterMiscellaneous"

    const/4 p2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2a

    .line 133
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "emitterMiscellaneous"

    invoke-virtual {p1, v1, v0, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_37

    .line 135
    :cond_2a
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "emitterMiscellaneous"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p1

    .line 139
    :try_start_34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    .line 142
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTraffic(I)V
    .registers 8

    monitor-enter p0

    .line 145
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_39

    if-eqz v0, :cond_37

    .line 147
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "traffic"

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "emitterMiscellaneous"

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2a

    .line 150
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "emitterMiscellaneous"

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_37

    .line 152
    :cond_2a
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "emitterMiscellaneous"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p1

    .line 156
    :try_start_34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    .line 159
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method
