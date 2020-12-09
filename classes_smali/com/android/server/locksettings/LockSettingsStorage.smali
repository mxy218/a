.class Lcom/android/server/locksettings/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache;,
        Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/locksettings/LockSettingsStorage$Callback;,
        Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;,
        Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    }
.end annotation


# static fields
.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final CHILD_PROFILE_LOCK_FILE:Ljava/lang/String; = "gatekeeper.profile.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG:Z = false

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final SYNTHETIC_PASSWORD_DIRECTORY:Ljava/lang/String; = "spblob/"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"


# instance fields
.field private final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private final mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field private mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 401
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

.method static constructor <clinit>()V
    .registers 2

    .line 72
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "name"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 186
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 188
    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 445
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 447
    :cond_17
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private ensureSyntheticPasswordDirectoryForUser(I)V
    .registers 3

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 574
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 576
    :cond_d
    return-void
.end method

.method private fsyncDirectory(Ljava/io/File;)V
    .registers 7

    .line 398
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_21

    const/4 v2, 0x0

    .line 400
    :try_start_11
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 401
    :try_start_14
    invoke-static {v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_21

    .line 404
    goto :goto_38

    .line 398
    :catchall_18
    move-exception v1

    :try_start_19
    throw v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 401
    :catchall_1a
    move-exception v2

    if-eqz v0, :cond_20

    :try_start_1d
    invoke-static {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_20
    throw v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    .line 402
    :catch_21
    move-exception v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error syncing directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LockSettingsStorage"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :goto_38
    return-void
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .registers 3

    .line 492
    const-string v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    if-nez p1, :cond_2b

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 507
    :cond_2b
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 2

    .line 361
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 362
    if-eqz p1, :cond_b

    array-length p1, p1

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 10

    .line 367
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 369
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 371
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 372
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b6

    .line 374
    nop

    .line 375
    nop

    .line 377
    const/4 v0, 0x0

    :try_start_1d
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_5b
    .catchall {:try_start_1d .. :try_end_25} :catchall_59

    .line 378
    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    .line 379
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 380
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_54
    .catchall {:try_start_25 .. :try_end_34} :catchall_51

    .line 384
    nop

    .line 386
    :try_start_35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 389
    :goto_38
    goto :goto_92

    .line 387
    :catch_39
    move-exception v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettingsStorage"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 384
    :catchall_51
    move-exception p1

    move-object v0, v2

    goto :goto_98

    .line 381
    :catch_54
    move-exception v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_5d

    .line 384
    :catchall_59
    move-exception p1

    goto :goto_98

    .line 381
    :catch_5b
    move-exception v3

    move-object v2, v0

    .line 382
    :goto_5d
    :try_start_5d
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_59

    .line 384
    if-eqz v0, :cond_91

    .line 386
    :try_start_75
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 389
    :goto_78
    goto :goto_91

    .line 387
    :catch_79
    move-exception v0

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LockSettingsStorage"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 392
    :cond_91
    :goto_91
    move-object v0, v2

    :goto_92
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    .line 393
    return-object v0

    .line 384
    :goto_98
    if-eqz v0, :cond_b5

    .line 386
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 389
    goto :goto_b5

    .line 387
    :catch_9e
    move-exception v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsStorage"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b5
    :goto_b5
    throw p1

    .line 372
    :catchall_b6
    move-exception p1

    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method private readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 6

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_17

    .line 273
    new-instance p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object p1

    .line 277
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 278
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 279
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v0

    .line 282
    :cond_2c
    return-object v3
.end method

.method private readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 6

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 288
    new-instance p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {p1, v0, v3, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object p1

    .line 292
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_29

    .line 294
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p1

    return-object p1

    .line 297
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 298
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 299
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v0

    .line 302
    :cond_3e
    return-object v2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10

    .line 408
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    const/4 v1, 0x0

    .line 415
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_52
    .catchall {:try_start_4 .. :try_end_c} :catchall_4f

    .line 417
    if-eqz p2, :cond_18

    :try_start_e
    array-length v1, p2

    if-nez v1, :cond_12

    goto :goto_18

    .line 420
    :cond_12
    const/4 v1, 0x0

    array-length v3, p2

    invoke-virtual {v2, p2, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1d

    .line 418
    :cond_18
    :goto_18
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 422
    :goto_1d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_30} :catch_4d
    .catchall {:try_start_e .. :try_end_30} :catchall_8e

    .line 427
    nop

    .line 429
    :try_start_31
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_ad

    goto :goto_71

    .line 430
    :catch_35
    move-exception v1

    .line 431
    :try_start_36
    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_ad

    goto :goto_71

    .line 424
    :catch_4d
    move-exception v1

    goto :goto_56

    .line 427
    :catchall_4f
    move-exception p1

    move-object v2, v1

    goto :goto_8f

    .line 424
    :catch_52
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 425
    :goto_56
    :try_start_56
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_8e

    .line 427
    if-eqz v2, :cond_87

    .line 429
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_ad

    .line 432
    :goto_71
    goto :goto_87

    .line 430
    :catch_72
    move-exception v1

    .line 431
    :try_start_73
    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 435
    :cond_87
    :goto_87
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 436
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_ad

    .line 437
    return-void

    .line 427
    :catchall_8e
    move-exception p1

    :goto_8f
    if-eqz v2, :cond_ac

    .line 429
    :try_start_91
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_ad

    .line 432
    goto :goto_ac

    .line 430
    :catch_95
    move-exception p2

    .line 431
    :try_start_96
    const-string v1, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_ac
    :goto_ac
    throw p1

    .line 436
    :catchall_ad
    move-exception p1

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_ad

    throw p1
.end method


# virtual methods
.method clearCache()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    .line 636
    return-void
.end method

.method closeDatabase()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->close()V

    .line 631
    return-void
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .registers 8

    .line 521
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_54

    .line 524
    const/4 p3, 0x0

    :try_start_10
    new-instance p4, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "rws"

    invoke-direct {p4, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_32
    .catchall {:try_start_10 .. :try_end_18} :catchall_30

    .line 525
    :try_start_18
    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 526
    new-array v0, v0, [B

    invoke-virtual {p4, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_29

    .line 527
    :try_start_22
    invoke-static {p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_32
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    .line 530
    :goto_25
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 531
    goto :goto_4a

    .line 524
    :catchall_29
    move-exception v0

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 527
    :catchall_2b
    move-exception v1

    :try_start_2c
    invoke-static {v0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_32
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 530
    :catchall_30
    move-exception p1

    goto :goto_50

    .line 527
    :catch_32
    move-exception p4

    .line 528
    :try_start_33
    const-string v0, "LockSettingsStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to zeroize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_30

    goto :goto_25

    .line 532
    :goto_4a
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    goto :goto_54

    .line 530
    :goto_50
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw p1

    .line 534
    :cond_54
    :goto_54
    return-void
.end method

.method getChildProfileLockFile(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 497
    const-string v0, "gatekeeper.profile.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 488
    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    const-string v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 478
    const-string v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 473
    const-string v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLockPatternSize(I)B
    .registers 6

    .line 464
    const-string v0, "lock_pattern_size"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 465
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1f

    const-wide/16 v2, 0x80

    cmp-long p1, v0, v2

    if-gez p1, :cond_1f

    .line 466
    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    .line 468
    :cond_1f
    const/4 p1, 0x3

    return p1
.end method

.method public getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2

    .line 640
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_e

    .line 641
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 642
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 644
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method protected getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    .line 582
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const/4 p2, 0x1

    aput-object p4, v0, p2

    const-string p2, "%016x.%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 583
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "spblob/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasChildProfileLock(I)Z
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasCredential(I)Z
    .registers 3

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public hasPassword(I)Z
    .registers 3

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 346
    :goto_18
    return p1
.end method

.method public hasPattern(I)Z
    .registers 3

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    .line 351
    :goto_22
    return p1
.end method

.method public listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 537
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 540
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    goto :goto_14

    .line 542
    :cond_30
    return-object v0
.end method

.method public listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 546
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p2

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 549
    if-nez p2, :cond_10

    .line 550
    return-object v0

    .line 552
    :cond_10
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_5a

    aget-object v4, p2, v3

    .line 553
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 554
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_57

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 556
    :try_start_2e
    aget-object v5, v4, v2

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3d} :catch_3e

    .line 559
    goto :goto_57

    .line 557
    :catch_3e
    move-exception v5

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LockSettingsStorage"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_57
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 562
    :cond_5a
    return-object v0
.end method

.method public prefetchUser(I)V
    .registers 13

    .line 244
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_d
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    .line 249
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 250
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_54

    .line 253
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 254
    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 254
    const-string v3, "locksettings"

    const-string/jumbo v5, "user=?"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 258
    :goto_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 259
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v5, v3, v4, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 262
    goto :goto_39

    .line 263
    :cond_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    .line 268
    return-void

    .line 250
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public readChildProfileLock(I)[B
    .registers 2

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 5

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p1

    .line 308
    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 309
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 310
    return-object v0

    .line 312
    :cond_12
    return-object p1

    .line 314
    :cond_13
    if-eqz v0, :cond_16

    .line 315
    return-object v0

    .line 316
    :cond_16
    if-eqz p1, :cond_19

    .line 317
    return-object p1

    .line 319
    :cond_19
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p1

    return-object p1
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16

    .line 219
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 221
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 223
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 224
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5a

    .line 227
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 229
    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 231
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/4 v2, 0x1

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 229
    const-string v4, "locksettings"

    const-string/jumbo v6, "user=? AND name=?"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 233
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 234
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_4c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, v0, p3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 239
    sget-object p1, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v0, p1, :cond_56

    goto :goto_59

    :cond_56
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :goto_59
    return-object p2

    .line 224
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 4

    .line 658
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 659
    if-nez v0, :cond_9

    .line 660
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v0

    .line 663
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    .line 664
    :catch_12
    move-exception v0

    .line 665
    const-string v1, "LockSettingsStorage"

    const-string v2, "Error reading persistent data block"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v0
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .registers 5

    .line 517
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public removeChildProfileLock(I)V
    .registers 2

    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 330
    goto :goto_c

    .line 328
    :catch_8
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    :goto_c
    return-void
.end method

.method public removeUser(I)V
    .registers 8

    .line 587
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 590
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 592
    const/4 v2, 0x0

    if-nez v1, :cond_4e

    .line 594
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    .line 596
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 598
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 599
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 601
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 604
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 605
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 607
    :cond_49
    monitor-exit v1

    goto :goto_51

    :catchall_4b
    move-exception p1

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_4b

    throw p1

    .line 610
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 613
    :goto_51
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    .line 615
    :try_start_55
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 616
    const-string v3, "locksettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 618
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    .line 622
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_55 .. :try_end_85} :catchall_8a

    .line 624
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 625
    nop

    .line 626
    return-void

    .line 624
    :catchall_8a
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    .line 192
    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .registers 3

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 335
    return-void
.end method

.method public writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V
    .registers 7

    .line 451
    nop

    .line 452
    nop

    .line 454
    iget v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 455
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_17

    .line 456
    :cond_e
    iget v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 457
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    goto :goto_17

    .line 456
    :cond_16
    move-object p1, v1

    .line 459
    :goto_17
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 460
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 461
    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 199
    const-string v0, "locksettings"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 200
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 206
    :try_start_20
    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 207
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 206
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 210
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_44

    .line 212
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    nop

    .line 215
    return-void

    .line 212
    :catchall_44
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .registers 6

    .line 649
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 650
    if-nez v0, :cond_7

    .line 651
    return-void

    .line 653
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    .line 655
    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .registers 6

    .line 512
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    .line 513
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 514
    return-void
.end method
