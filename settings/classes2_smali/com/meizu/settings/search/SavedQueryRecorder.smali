.class public Lcom/meizu/settings/search/SavedQueryRecorder;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "SavedQueryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static MAX_SAVED_SEARCH_QUERY:J = 0x40L


# instance fields
.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/meizu/settings/search/SavedQueryRecorder;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-string v0, "SavedQueryRecorder"

    const-string v1, "Cannot open writable database"

    .line 93
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryRecorder;->loadInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/lang/Void;
    .registers 12

    const-string v0, "SavedQueryRecorder"

    const-string v1, "saved_queries"

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 57
    iget-object v5, p0, Lcom/meizu/settings/search/SavedQueryRecorder;->mQuery:Ljava/lang/String;

    const-string v6, "query"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    invoke-direct {p0}, Lcom/meizu/settings/search/SavedQueryRecorder;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    return-object v3

    :cond_25
    :try_start_25
    const-string v5, "query = ?"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 68
    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryRecorder;->mQuery:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v2, v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 76
    sget-wide v9, Lcom/meizu/settings/search/SavedQueryRecorder;->MAX_SAVED_SEARCH_QUERY:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x0

    cmp-long p0, v4, v9

    if-lez p0, :cond_6d

    const-string p0, "rowId <= ?"

    new-array v6, v6, [Ljava/lang/String;

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    .line 78
    invoke-virtual {v2, v1, p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' saved Search query(ies)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception p0

    const-string v1, "Cannot update saved Search queries"

    .line 84
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6d
    :goto_6d
    return-object v3
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SavedQueryRecorder;->onDiscardResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method
