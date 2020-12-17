.class public Lcom/android/settings/slices/SlicesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SlicesDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "slices_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 141
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 142
    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE VIRTUAL TABLE slices_index USING fts4(key, title, summary, screentitle, keywords, icon, fragment, controller, platform_slice, slice_type, unavailable_slice_subtitle);"

    .line 191
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "SlicesDatabaseHelper"

    const-string p1, "Created databases"

    .line 192
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "DROP TABLE IF EXISTS slices_index"

    .line 196
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;
    .registers 3

    const-class v0, Lcom/android/settings/slices/SlicesDatabaseHelper;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    if-nez v1, :cond_12

    .line 135
    new-instance v1, Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;

    .line 137
    :cond_12
    sget-object p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->sSingleton:Lcom/android/settings/slices/SlicesDatabaseHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isBuildIndexed()Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "slices_shared_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isLocaleIndexed()Z
    .registers 3

    .line 220
    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "slices_shared_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setBuildIndexed()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 203
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setLocaleIndexed()V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "slices_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 208
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 210
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getBuildTag()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 227
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0
.end method

.method public isSliceDataIndexed()Z
    .registers 2

    .line 187
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isBuildIndexed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isLocaleIndexed()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const/4 v0, 0x5

    if-ge p2, v0, :cond_24

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconstructing DB from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SlicesDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_24
    return-void
.end method

.method reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->createDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public setIndexedState()V
    .registers 1

    .line 177
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setBuildIndexed()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setLocaleIndexed()V

    return-void
.end method
