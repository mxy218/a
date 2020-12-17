.class public Lcom/meizu/settings/search/SavedQueryRemover;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "SavedQueryRemover.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 62
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

    const-string v0, "SavedQueryRemover"

    const-string v1, "Cannot open writable database"

    .line 64
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearSaveQuery()V
    .registers 3

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/settings/search/SavedQueryRemover;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "saved_queries"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p0

    const-string v0, "SavedQueryRemover"

    const-string v1, "ClearSearchQuery failed. "

    .line 89
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryRemover;->loadInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/lang/Void;
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/search/SavedQueryRemover;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "saved_queries"

    .line 46
    invoke-virtual {p0, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p0

    const-string v1, "SavedQueryRemover"

    const-string v2, "Cannot update saved Search queries"

    .line 50
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SavedQueryRemover;->onDiscardResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method
