.class public Lcom/meizu/settings/search/SavedQueryLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "SavedQueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "+",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/settings/search/SiteMapManager;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {p1}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    iput-object p2, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    .line 56
    new-instance p2, Lcom/meizu/settings/search/CursorToSearchResultConverter;

    invoke-direct {p2, p1}, Lcom/meizu/settings/search/CursorToSearchResultConverter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

    return-void
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT "

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 108
    :goto_b
    sget-object v1, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 109
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    const-string v0, " timestamp "

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "prefs_index"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "saved_queries"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string p1, " WHERE query=id OR query=prefs_index.rowId"

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ORDER BY timestamp DESC"

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_47
    const-string v0, " WHERE "

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " query=id AND "

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "query"

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LIKE "

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6b
    const-string p1, " LIMIT "

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertCursorToResult(Landroid/database/Cursor;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mConverter:Lcom/meizu/settings/search/CursorToSearchResultConverter;

    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/meizu/settings/search/CursorToSearchResultConverter;->getSearchResultList(Lcom/meizu/settings/search/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 99
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SavedQueryLoader;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestions query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 76
    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/SavedQueryLoader;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lcom/meizu/settings/search/SavedQueryLoader;->convertCursorToResult(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SavedQueryLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
