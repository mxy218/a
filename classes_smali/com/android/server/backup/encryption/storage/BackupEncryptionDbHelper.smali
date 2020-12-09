.class Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BackupEncryptionDbHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "backupencryption.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_TERTIARY_KEYS_ENTRY:Ljava/lang/String; = "CREATE TABLE tertiary_keys ( _id INTEGER PRIMARY KEY,secondary_key_alias TEXT,package_name TEXT,wrapped_key_bytes BLOB,UNIQUE(secondary_key_alias,package_name))"

.field private static final SQL_DROP_TERTIARY_KEYS_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS tertiary_keys"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 53
    const-string v0, "backupencryption.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 98
    :catch_5
    move-exception v0

    .line 99
    new-instance v1, Lcom/android/server/backup/encryption/storage/EncryptionDbException;

    invoke-direct {v1, v0}, Lcom/android/server/backup/encryption/storage/EncryptionDbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWritableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 86
    :catch_5
    move-exception v0

    .line 87
    new-instance v1, Lcom/android/server/backup/encryption/storage/EncryptionDbException;

    invoke-direct {v1, v0}, Lcom/android/server/backup/encryption/storage/EncryptionDbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 64
    const-string v0, "CREATE TABLE tertiary_keys ( _id INTEGER PRIMARY KEY,secondary_key_alias TEXT,package_name TEXT,wrapped_key_bytes BLOB,UNIQUE(secondary_key_alias,package_name))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 75
    const-string p2, "DROP TABLE IF EXISTS tertiary_keys"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 69
    const-string p2, "DROP TABLE IF EXISTS tertiary_keys"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public resetDatabase()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getWritableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    const-string v1, "DROP TABLE IF EXISTS tertiary_keys"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method
