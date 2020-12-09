.class public Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
.super Ljava/lang/Object;
.source "TertiaryKeysTable.java"


# instance fields
.field private final mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 92
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public addKey(Lcom/android/server/backup/encryption/storage/TertiaryKey;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getWritableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    nop

    .line 48
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getSecondaryKeyAlias()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "secondary_key_alias"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getWrappedKeyBytes()[B

    move-result-object p1

    .line 50
    const-string/jumbo v2, "wrapped_key_bytes"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 52
    const-string/jumbo p1, "tertiary_keys"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllKeys(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    const-string/jumbo v0, "wrapped_key_bytes"

    const-string/jumbo v9, "package_name"

    const-string v2, "_id"

    const-string/jumbo v3, "secondary_key_alias"

    filled-new-array {v2, v3, v9, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 105
    nop

    .line 106
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 108
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    nop

    .line 110
    const-string/jumbo v4, "secondary_key_alias = ?"

    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    nop

    .line 118
    :goto_30
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 119
    nop

    .line 121
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 120
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    nop

    .line 125
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 124
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 127
    new-instance v4, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_30 .. :try_end_50} :catchall_5a

    .line 130
    goto :goto_30

    .line 131
    :cond_51
    const/4 p1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 132
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 109
    :catchall_5a
    move-exception p1

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 131
    :catchall_5c
    move-exception v0

    if-eqz v1, :cond_62

    invoke-static {p1, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_62
    throw v0
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    const-string/jumbo v0, "wrapped_key_bytes"

    const-string v2, "_id"

    const-string/jumbo v3, "secondary_key_alias"

    const-string/jumbo v4, "package_name"

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 65
    nop

    .line 70
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object p2, v5, v2

    .line 72
    nop

    .line 73
    const-string/jumbo v4, "secondary_key_alias = ? AND package_name = ?"

    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    nop

    .line 81
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 82
    const/4 v3, 0x0

    if-nez v2, :cond_3d

    .line 83
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_56

    .line 92
    invoke-static {v3, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 83
    return-object p1

    .line 86
    :cond_3d
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    nop

    .line 89
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 91
    new-instance v2, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_56

    .line 92
    invoke-static {v3, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 91
    return-object p1

    .line 72
    :catchall_56
    move-exception p1

    :try_start_57
    throw p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 92
    :catchall_58
    move-exception p2

    if-eqz v1, :cond_5e

    invoke-static {p1, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5e
    throw p2
.end method
