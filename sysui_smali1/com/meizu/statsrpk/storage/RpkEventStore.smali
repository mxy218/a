.class public Lcom/meizu/statsrpk/storage/RpkEventStore;
.super Ljava/lang/Object;
.source "RpkEventStore.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RpkEventStore"


# instance fields
.field private final CLEAR_KEEP_LIMIT:I

.field private final CLEAR_THRESHOLD:I

.field private final ONCE_EMIT_LIMIT:I

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 26
    iput v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->ONCE_EMIT_LIMIT:I

    const/16 v0, 0x2710

    .line 27
    iput v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->CLEAR_THRESHOLD:I

    const/16 v0, 0x3e8

    .line 28
    iput v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->CLEAR_KEEP_LIMIT:I

    .line 41
    iput-object p1, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->dbHelper:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    .line 44
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->open()V

    .line 46
    sget-object p1, Lcom/meizu/statsrpk/storage/RpkEventStore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getAscEventsLimit(Ljava/lang/String;I)Ljava/util/List;
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

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId ASC LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/statsrpk/storage/RpkEventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getDescEventsLimit(Ljava/lang/String;I)Ljava/util/List;
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

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId DESC LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/statsrpk/storage/RpkEventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isDatabaseOpen()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private declared-synchronized open()V
    .registers 2

    monitor-enter p0

    .line 54
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    iget-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->dbHelper:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    iget-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 58
    :cond_14
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

    .line 151
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_87

    if-eqz v1, :cond_85

    const/4 v1, 0x0

    .line 155
    :try_start_d
    iget-object v2, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_77

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_77

    .line 161
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    invoke-direct {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;-><init>()V

    const-string p2, "eventId"

    .line 162
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setId(J)V

    const-string p2, "eventSessionId"

    .line 163
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setSessionId(Ljava/lang/String;)V

    const-string p2, "encrypt"

    .line 164
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setEncrypt(I)V

    const-string p2, "eventData"

    .line 165
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setEventData(Ljava/lang/String;)V

    const-string p2, "dateCreated"

    .line 166
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->setDateCreated(Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_7b

    goto :goto_23

    .line 174
    :cond_77
    :goto_77
    :try_start_77
    invoke-static {v1}, Lcom/meizu/statsapp/v3/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_87

    goto :goto_85

    :catchall_7b
    move-exception p1

    .line 172
    :try_start_7c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_77

    :catchall_80
    move-exception p1

    .line 174
    :try_start_81
    invoke-static {v1}, Lcom/meizu/statsapp/v3/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_87

    .line 178
    :cond_85
    :goto_85
    monitor-exit p0

    return-object v0

    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearOldEventsIfNecessary()V
    .registers 6

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_38

    if-eqz v0, :cond_36

    :try_start_7
    const-string v0, "events"

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_36

    .line 130
    sget-object v2, Lcom/meizu/statsrpk/storage/RpkEventStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear old events, amount of events currently in the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from events where (eventId not in (select eventId from events order by eventId desc limit 1000))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v0

    .line 135
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 138
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->dbHelper:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 74
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppKeys()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_47

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    .line 195
    :try_start_d
    iget-object v2, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const-string v4, "events"

    const-string v5, "appKey"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x0

    .line 200
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_3b

    goto :goto_25

    .line 206
    :cond_37
    :goto_37
    :try_start_37
    invoke-static {v1}, Lcom/meizu/statsapp/v3/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_47

    goto :goto_45

    :catchall_3b
    move-exception v2

    .line 204
    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_37

    :catchall_40
    move-exception v0

    .line 206
    :try_start_41
    invoke-static {v1}, Lcom/meizu/statsapp/v3/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_47

    .line 210
    :cond_45
    :goto_45
    monitor-exit p0

    return-object v0

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEmittableEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appKey=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc8

    invoke-direct {p0, p1, v1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getAscEventsLimit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    .line 249
    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getId()J

    move-result-wide v2

    .line 250
    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->toPayload(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 252
    new-instance v4, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    const-string v5, ""

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;-><init>(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_49

    goto :goto_26

    .line 255
    :cond_47
    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventsCountForAppKey(Ljava/lang/String;)J
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "events"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appKey=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-wide v0

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertEvent(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J
    .registers 8

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 86
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_6e

    if-eqz v2, :cond_55

    .line 88
    :try_start_9
    iget-object v2, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/utils/CommonUtils;->isDebugMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    const/4 v2, 0x2

    :goto_14
    invoke-static {v2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->fromPayload(ILcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    move-result-object p3

    .line 89
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "appKey"

    .line 90
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rpkPkgName"

    .line 91
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventSessionId"

    .line 92
    invoke-virtual {p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "encrypt"

    .line 93
    invoke-virtual {p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getEncrypt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "eventData"

    .line 94
    invoke-virtual {p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getEventData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "events"

    const/4 p3, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    .line 97
    :try_start_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :cond_55
    :goto_55
    sget-object p1, Lcom/meizu/statsrpk/storage/RpkEventStore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "succ add event, inserted:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_6e

    .line 101
    monitor-exit p0

    return-wide v0

    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeEvent(Ljava/lang/String;J)Z
    .registers 9

    monitor-enter p0

    const/4 v0, -0x1

    .line 113
    :try_start_2
    invoke-direct {p0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->isDatabaseOpen()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_5e

    if-eqz v1, :cond_39

    .line 115
    :try_start_8
    iget-object v1, p0, Lcom/meizu/statsrpk/storage/RpkEventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "eventId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v1

    .line 118
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_39
    :goto_39
    sget-object v1, Lcom/meizu/statsrpk/storage/RpkEventStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed event, appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", eventId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_5e

    const/4 p1, 0x1

    if-ne v0, p1, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x0

    .line 122
    :goto_5c
    monitor-exit p0

    return p1

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
