.class Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RpkEventStoreHelper.java"


# static fields
.field public static final COLUMN_DATE_CREATED:Ljava/lang/String; = "dateCreated"

.field public static final COLUMN_ENCRYPT:Ljava/lang/String; = "encrypt"

.field public static final COLUMN_EVENT_DATA:Ljava/lang/String; = "eventData"

.field public static final COLUMN_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "eventSessionId"

.field public static final COLUMN_appKey:Ljava/lang/String; = "appKey"

.field public static final COLUMN_rpkPkgName:Ljava/lang/String; = "rpkPkgName"

.field private static final DATABASE_NAME:Ljava/lang/String; = "statsrpk.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_EVENTS:Ljava/lang/String; = "events"

.field private static final TAG:Ljava/lang/String; = "com.meizu.statsrpk.storage.RpkEventStoreHelper"

.field private static final queryCreateTable:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS \'events\' (eventId INTEGER PRIMARY KEY autoincrement, rpkPkgName TEXT, appKey TEXT, encrypt INTEGER, eventSessionId TEXT, eventData TEXT, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP, unique(eventId))"

.field private static sInstance:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "statsrpk.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    sget-object p0, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->TAG:Ljava/lang/String;

    const-string p1, "DATABASE_VERSION 1"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;
    .registers 3

    const-class v0, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->sInstance:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    if-nez v1, :cond_12

    .line 63
    new-instance v1, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->sInstance:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;

    .line 65
    :cond_12
    sget-object p0, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->sInstance:Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE IF NOT EXISTS \'events\' (eventId INTEGER PRIMARY KEY autoincrement, rpkPkgName TEXT, appKey TEXT, encrypt INTEGER, eventSessionId TEXT, eventData TEXT, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP, unique(eventId))"

    .line 78
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 83
    sget-object p0, Lcom/meizu/statsrpk/storage/RpkEventStoreHelper;->TAG:Ljava/lang/String;

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
