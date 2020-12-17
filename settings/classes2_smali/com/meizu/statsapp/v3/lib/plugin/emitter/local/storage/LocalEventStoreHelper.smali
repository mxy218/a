.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalEventStoreHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.meizu.statsapp.v3.lib.plugin.emitter.local.storage.LocalEventStoreHelper"

.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;
    .registers 5

    const-class v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    monitor-enter v0

    .line 76
    :try_start_3
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    if-nez v1, :cond_36

    .line 78
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statsapp_v3.db_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    const-string v1, "statsapp_v3.db"

    .line 84
    :goto_2b
    new-instance v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;

    .line 86
    :cond_36
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    monitor-exit v0

    return-object p0

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE IF NOT EXISTS \'events\' (eventId INTEGER PRIMARY KEY autoincrement, encrypt INTEGER, eventSessionId TEXT, eventSource TEXT, eventData TEXT, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP)"

    .line 98
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS \'emitterMiscellaneous\' (lastResetTime BIGINT, traffic INTEGER)"

    .line 99
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 104
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStoreHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upgrading database from version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
