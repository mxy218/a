.class public Lcom/flyme/server/notfication/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "DatabaseHelper"

    sput-object v0, Lcom/flyme/server/notfication/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "name"  # Ljava/lang/String;

    .line 34
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "version"  # I

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "factory"  # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"  # I

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method

.method private readDailyItem(Lmeizu/notification/RankingDaily;Landroid/database/Cursor;)V
    .registers 6
    .param p1, "daily"  # Lmeizu/notification/RankingDaily;
    .param p2, "cursor"  # Landroid/database/Cursor;

    .line 104
    const-string v0, "id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "index":I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p1, Lmeizu/notification/RankingDaily;->key:J

    .line 106
    const-string v1, "package"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 107
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    .line 108
    const-string v1, "post_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lmeizu/notification/RankingDaily;->postDate:J

    .line 110
    const-string v1, "update_date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    .line 112
    const-string v1, "score"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->score:F

    .line 114
    const-string v1, "click_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 115
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 116
    const-string v1, "all_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->allNum:I

    .line 118
    const-string v1, "remove_num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 120
    const-string v1, "category"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    .line 122
    const-string v1, "notification_priority"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    .line 124
    const-string v1, "category_priority"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 125
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    .line 126
    const-string v1, "score_scale"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->score_scale:F

    .line 129
    const-string v1, "click_ranking"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->click_ranking:I

    .line 131
    const-string v1, "send_ranking"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 132
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lmeizu/notification/RankingDaily;->send_ranking:I

    .line 133
    return-void
.end method


# virtual methods
.method public getDaily(Ljava/lang/String;Ljava/lang/String;)Lmeizu/notification/RankingDaily;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "category"  # Ljava/lang/String;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const-string v3, "package=? and category=?"

    invoke-virtual {p0, v3, v0, v1}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    return-object v1

    .line 80
    :cond_25
    return-object v1
.end method

.method public getDaily(Ljava/lang/String;Ljava/lang/String;J)Lmeizu/notification/RankingDaily;
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "category"  # Ljava/lang/String;
    .param p3, "updateDate"  # J

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const-string v3, "package=? and update_date=? and category=?"

    invoke-virtual {p0, v3, v0, v1}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2c

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    return-object v1

    .line 88
    :cond_2c
    return-object v1
.end method

.method public insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J
    .registers 10
    .param p1, "daily"  # Lmeizu/notification/RankingDaily;
    .param p2, "updateScore"  # Z

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v1, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_num"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    iget v1, p1, Lmeizu/notification/RankingDaily;->allNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "all_num"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    iget-wide v1, p1, Lmeizu/notification/RankingDaily;->postDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "post_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    iget-wide v1, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "update_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iget v1, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "remove_num"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget-object v1, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v1, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    iget v1, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category_priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    iget v1, p1, Lmeizu/notification/RankingDaily;->score_scale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "score_scale"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 54
    if-eqz p2, :cond_8e

    .line 55
    iget v1, p1, Lmeizu/notification/RankingDaily;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 56
    iget v1, p1, Lmeizu/notification/RankingDaily;->click_ranking:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_ranking"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    iget v1, p1, Lmeizu/notification/RankingDaily;->send_ranking:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_ranking"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    :cond_8e
    iget-wide v1, p1, Lmeizu/notification/RankingDaily;->key:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "daily"

    if-gtz v1, :cond_a4

    .line 60
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, p1, Lmeizu/notification/RankingDaily;->key:J

    goto :goto_b9

    .line 62
    :cond_a4
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p1, Lmeizu/notification/RankingDaily;->key:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "id=?"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    :goto_b9
    iget-wide v1, p1, Lmeizu/notification/RankingDaily;->key:J

    return-wide v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    const-string v0, "CREATE TABLE IF NOT EXISTS \"daily\" (\"id\" INTEGER PRIMARY KEY  NOT NULL  DEFAULT (0) ,\"package\" VARCHAR NOT NULL  DEFAULT (null) ,\"click_num\" INTEGER NOT NULL  DEFAULT (0) ,\"all_num\" INTEGER NOT NULL  DEFAULT (0),\"remove_num\" INTEGER NOT NULL  DEFAULT (0),\"send_ranking\" INTEGER NOT NULL  DEFAULT (0) ,\"click_ranking\" INTEGER NOT NULL  DEFAULT (0) ,\"score\" FLOAT DEFAULT (0),\"score_scale\" FLOAT  DEFAULT (0),\"post_date\" DATETIME NOT NULL,\"update_date\" DATETIME NOT NULL,\"category\" STRING,\"notification_priority\" INTEGER NOT NULL  DEFAULT (0),\"category_priority\" INTEGER NOT NULL  DEFAULT (0), UNIQUE(package, category))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"  # I
    .param p3, "newVersion"  # I

    .line 138
    sget-object v0, Lcom/flyme/server/notfication/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eq p2, p3, :cond_2c

    .line 141
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2c

    .line 142
    const-string v0, "drop table if exists daily"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/flyme/server/notfication/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    nop

    .line 148
    :cond_2c
    return-void
.end method

.method public queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "selection"  # Ljava/lang/String;
    .param p2, "selectionArgs"  # [Ljava/lang/String;
    .param p3, "orderBy"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmeizu/notification/RankingDaily;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "daily"

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "dailyList":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    :goto_15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 95
    new-instance v2, Lmeizu/notification/RankingDaily;

    invoke-direct {v2}, Lmeizu/notification/RankingDaily;-><init>()V

    .line 96
    .local v2, "daily":Lmeizu/notification/RankingDaily;
    invoke-direct {p0, v2, v0}, Lcom/flyme/server/notfication/DatabaseHelper;->readDailyItem(Lmeizu/notification/RankingDaily;Landroid/database/Cursor;)V

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v2  # "daily":Lmeizu/notification/RankingDaily;
    goto :goto_15

    .line 99
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    return-object v1
.end method

.method public updateDailyScore(Lmeizu/notification/RankingDaily;)V
    .registers 8
    .param p1, "daily"  # Lmeizu/notification/RankingDaily;

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p1, Lmeizu/notification/RankingDaily;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 70
    iget-wide v1, p1, Lmeizu/notification/RankingDaily;->key:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2f

    .line 71
    invoke-virtual {p0}, Lcom/flyme/server/notfication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p1, Lmeizu/notification/RankingDaily;->key:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "daily"

    const-string v4, "id=?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    :cond_2f
    return-void
.end method
