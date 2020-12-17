.class public Lcom/meizu/settings/search/DatabaseResultLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "DatabaseResultLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/Set<",
        "+",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final BASE_RANKS:[I

.field public static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field public static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field public static final MATCH_COLUMNS_TERTIARY:[Ljava/lang/String;

.field public static final SELECT_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

.field final mQueryText:Ljava/lang/String;

.field private final mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-string v0, "docid"

    const-string v1, "data_title"

    const-string v2, "data_summary_on"

    const-string v3, "data_summary_off"

    const-string v4, "class_name"

    const-string v5, "screen_title"

    const-string v6, "icon"

    const-string v7, "intent_action"

    const-string v8, "intent_target_package"

    const-string v9, "intent_target_class"

    const-string v10, "data_key_reference"

    const-string v11, "payload_type"

    const-string v12, "payload"

    const-string v13, "prefs_index.rowId"

    .line 61
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string v0, "data_title"

    .line 80
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/DatabaseResultLoader;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    const-string v0, "data_summary_on"

    const-string v1, "data_summary_on_normalized"

    const-string v2, "data_summary_off"

    const-string v3, "data_summary_off_normalized"

    .line 85
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/DatabaseResultLoader;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    const-string v0, "data_keywords"

    const-string v1, "data_entries"

    .line 92
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/DatabaseResultLoader;->MATCH_COLUMNS_TERTIARY:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 105
    fill-array-data v0, :array_4c

    sput-object v0, Lcom/meizu/settings/search/DatabaseResultLoader;->BASE_RANKS:[I

    return-void

    nop

    :array_4c
    .array-data 4
        0x1
        0x3
        0x7
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V
    .registers 4

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object p3, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    .line 115
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    .line 117
    new-instance p2, Lcom/meizu/settings/search/CursorToSearchResultConverter;

    invoke-direct {p2, p1}, Lcom/meizu/settings/search/CursorToSearchResultConverter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

    return-void
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/search/DatabaseResultLoader;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_18

    const-string p0, " ORDER BY "

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "data_rank"

    .line 303
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 311
    :goto_b
    sget-object v2, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 312
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    sget-object v2, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_21

    const-string v2, ", "

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    const-string v1, " FROM "

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "prefs_index"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/search/DatabaseResultLoader;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 328
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_65

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 329
    array-length v2, p2

    if-le v2, v1, :cond_14

    const-string v2, "("

    .line 330
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \' \', \'\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    array-length v2, p2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5d

    .line 335
    array-length v2, p2

    if-le v2, v1, :cond_62

    const-string v1, ")"

    .line 336
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_5d
    const-string v1, " OR  "

    .line 339
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_65
    const-string p1, " AND  (intent_target_package  != \'com.android.phone\' or intent_target_package  is null)"

    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 344
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "locale"

    .line 345
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    .line 346
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "enabled"

    .line 349
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = 1"

    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSearchResults()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    sget-object v2, Lcom/meizu/settings/search/DatabaseResultLoader;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/meizu/settings/search/DatabaseResultLoader;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    invoke-virtual {v1, p0, v0, v3}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->convertCursor(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/Set;

    move-result-object p0

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/meizu/settings/search/DatabaseResultLoader;->loadInBackground()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 131
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/search/DatabaseResultLoader;->getSearchResults()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCancelLoad()Z
    .registers 1

    .line 146
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 37
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/DatabaseResultLoader;->onDiscardResult(Ljava/util/Set;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
