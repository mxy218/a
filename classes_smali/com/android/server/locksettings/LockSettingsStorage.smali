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
.method static constructor <clinit>()V
    .registers 2

    .line 69
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "name"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 185
    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .line 59
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 430
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 432
    .end local v1  # "file":Ljava/io/File;
    :cond_17
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private ensureSyntheticPasswordDirectoryForUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    .line 550
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 553
    :cond_d
    return-void
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I

    .line 469
    const-string v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "basename"  # Ljava/lang/String;

    .line 478
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

    .line 480
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_2b

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 484
    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 359
    .local v0, "contents":[B
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 9
    .param p1, "name"  # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 366
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 368
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 369
    .local v1, "version":I
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_9d

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 374
    .local v2, "stored":[B
    :try_start_1c
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 375
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 376
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 377
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_54
    .catchall {:try_start_1c .. :try_end_35} :catchall_52

    .line 381
    nop

    .line 383
    :try_start_36
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 386
    :goto_39
    goto :goto_79

    .line 384
    :catch_3a
    move-exception v3

    .line 385
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_40
    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LockSettingsStorage"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3  # "e":Ljava/io/IOException;
    goto :goto_39

    .line 381
    :catchall_52
    move-exception v3

    goto :goto_7f

    .line 378
    :catch_54
    move-exception v3

    .line 379
    .restart local v3  # "e":Ljava/io/IOException;
    :try_start_55
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_52

    .line 381
    nop

    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_79

    .line 383
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_39

    .line 384
    :catch_72
    move-exception v3

    .line 385
    .restart local v3  # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_40

    .line 389
    .end local v3  # "e":Ljava/io/IOException;
    :cond_79
    :goto_79
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    .line 390
    return-object v2

    .line 381
    :goto_7f
    if-eqz v0, :cond_9c

    .line 383
    :try_start_81
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 386
    goto :goto_9c

    .line 384
    :catch_85
    move-exception v4

    .line 385
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsStorage"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v4  # "e":Ljava/io/IOException;
    :cond_9c
    :goto_9c
    throw v3

    .line 369
    .end local v0  # "raf":Ljava/io/RandomAccessFile;
    .end local v1  # "version":I
    .end local v2  # "stored":[B
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method private readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 7
    .param p1, "userId"  # I

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    .local v0, "stored":[B
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_17

    .line 270
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    .line 274
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 276
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    .line 279
    :cond_2c
    return-object v3
.end method

.method private readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 7
    .param p1, "userId"  # I

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 284
    .local v0, "stored":[B
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 285
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    .line 289
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_29

    .line 291
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    return-object v1

    .line 294
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 296
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V

    return-object v1

    .line 299
    :cond_3e
    return-object v2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "hash"  # [B

    .line 394
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    const/4 v1, 0x0

    .line 401
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 403
    if-eqz p2, :cond_19

    array-length v2, p2

    if-nez v2, :cond_13

    goto :goto_19

    .line 406
    :cond_13
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1e

    .line 404
    :cond_19
    :goto_19
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 408
    :goto_1e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_41
    .catchall {:try_start_4 .. :try_end_21} :catchall_3f

    .line 412
    nop

    .line 414
    :try_start_22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_9a

    .line 417
    :goto_25
    goto :goto_74

    .line 415
    :catch_26
    move-exception v2

    .line 416
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3a
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_9a

    .line 417
    nop

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_74

    .line 412
    :catchall_3f
    move-exception v2

    goto :goto_7b

    .line 409
    :catch_41
    move-exception v2

    .line 410
    .restart local v2  # "e":Ljava/io/IOException;
    :try_start_42
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    .line 412
    nop

    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_74

    .line 414
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_9a

    goto :goto_25

    .line 415
    :catch_5f
    move-exception v2

    .line 416
    .restart local v2  # "e":Ljava/io/IOException;
    :try_start_60
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 420
    .end local v2  # "e":Ljava/io/IOException;
    :cond_74
    :goto_74
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 421
    .end local v1  # "raf":Ljava/io/RandomAccessFile;
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_9a

    .line 422
    return-void

    .line 412
    .restart local v1  # "raf":Ljava/io/RandomAccessFile;
    :goto_7b
    if-eqz v1, :cond_98

    .line 414
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81
    .catchall {:try_start_7d .. :try_end_80} :catchall_9a

    .line 417
    goto :goto_98

    .line 415
    :catch_81
    move-exception v3

    .line 416
    .local v3, "e":Ljava/io/IOException;
    :try_start_82
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v3  # "e":Ljava/io/IOException;
    :cond_98
    :goto_98
    nop

    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "hash":[B
    throw v2

    .line 421
    .end local v1  # "raf":Ljava/io/RandomAccessFile;
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "hash":[B
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_9a

    throw v1
.end method


# virtual methods
.method clearCache()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    .line 613
    return-void
.end method

.method closeDatabase()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->close()V

    .line 608
    return-void
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "handle"  # J
    .param p4, "name"  # Ljava/lang/String;

    .line 498
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 501
    :try_start_f
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_33
    .catchall {:try_start_f .. :try_end_17} :catchall_31

    .line 502
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_17
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 503
    .local v3, "fileSize":I
    new-array v4, v3, [B

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 504
    .end local v3  # "fileSize":I
    :try_start_21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_33
    .catchall {:try_start_21 .. :try_end_24} :catchall_31

    .line 507
    .end local v2  # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4b

    .line 501
    .restart local v2  # "raf":Ljava/io/RandomAccessFile;
    :catchall_25
    move-exception v3

    .end local v0  # "path":Ljava/lang/String;
    .end local v1  # "file":Ljava/io/File;
    .end local v2  # "raf":Ljava/io/RandomAccessFile;
    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .end local p1  # "userId":I
    .end local p2  # "handle":J
    .end local p4  # "name":Ljava/lang/String;
    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 504
    .restart local v0  # "path":Ljava/lang/String;
    .restart local v1  # "file":Ljava/io/File;
    .restart local v2  # "raf":Ljava/io/RandomAccessFile;
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .restart local p1  # "userId":I
    .restart local p2  # "handle":J
    .restart local p4  # "name":Ljava/lang/String;
    :catchall_27
    move-exception v4

    :try_start_28
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v5

    :try_start_2d
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "path":Ljava/lang/String;
    .end local v1  # "file":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .end local p1  # "userId":I
    .end local p2  # "handle":J
    .end local p4  # "name":Ljava/lang/String;
    :goto_30
    throw v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_33
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 507
    .end local v2  # "raf":Ljava/io/RandomAccessFile;
    .restart local v0  # "path":Ljava/lang/String;
    .restart local v1  # "file":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/locksettings/LockSettingsStorage;
    .restart local p1  # "userId":I
    .restart local p2  # "handle":J
    .restart local p4  # "name":Ljava/lang/String;
    :catchall_31
    move-exception v2

    goto :goto_56

    .line 504
    :catch_33
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to zeroize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    .line 507
    nop

    .end local v2  # "e":Ljava/lang/Exception;
    :goto_4b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 508
    nop

    .line 509
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    goto :goto_5a

    .line 507
    :goto_56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    .line 511
    :cond_5a
    :goto_5a
    return-void
.end method

.method getChildProfileLockFile(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 474
    const-string v0, "gatekeeper.profile.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 465
    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 460
    const-string v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 455
    const-string v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 450
    const-string v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_e

    .line 618
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 619
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 621
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method protected getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "userId"  # I
    .param p2, "handle"  # J
    .param p4, "name"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "baseDir":Ljava/io/File;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const-string v2, "%016x.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 544
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "spblob/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasChildProfileLock(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCredential(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public hasPassword(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 343
    :goto_18
    return v0
.end method

.method public hasPattern(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 348
    :goto_22
    return v0
.end method

.method public listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p1, "stateName"  # Ljava/lang/String;
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

    .line 514
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 515
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 516
    .local v1, "um":Landroid/os/UserManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 517
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    goto :goto_14

    .line 519
    :cond_30
    return-object v0
.end method

.method public listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "stateName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 523
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    .line 524
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 526
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_10

    .line 527
    return-object v1

    .line 529
    :cond_10
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_5a

    aget-object v6, v2, v5

    .line 530
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "parts":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_57

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 533
    :try_start_2e
    aget-object v8, v7, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3d} :catch_3e

    .line 536
    goto :goto_57

    .line 534
    :catch_3e
    move-exception v8

    .line 535
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LockSettingsStorage"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v6  # "file":Ljava/io/File;
    .end local v7  # "parts":[Ljava/lang/String;
    .end local v8  # "e":Ljava/lang/NumberFormatException;
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 539
    :cond_5a
    return-object v1
.end method

.method public prefetchUser(I)V
    .registers 14
    .param p1, "userId"  # I

    .line 241
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 243
    monitor-exit v0

    return-void

    .line 245
    :cond_d
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    .line 246
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 247
    .local v1, "version":I
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_57

    .line 250
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 251
    const-string/jumbo v3, "locksettings"

    const-string/jumbo v5, "user=?"

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_53

    .line 255
    :goto_3c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 256
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v5, v2, v4, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 259
    .end local v2  # "key":Ljava/lang/String;
    .end local v4  # "value":Ljava/lang/String;
    goto :goto_3c

    .line 260
    :cond_50
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    .line 265
    return-void

    .line 247
    .end local v0  # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1  # "version":I
    .end local v3  # "cursor":Landroid/database/Cursor;
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public readChildProfileLock(I)[B
    .registers 3
    .param p1, "userId"  # I

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 6
    .param p1, "userId"  # I

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 304
    .local v0, "passwordHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 305
    .local v1, "patternHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    .line 306
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 307
    return-object v0

    .line 309
    :cond_12
    return-object v1

    .line 311
    :cond_13
    if-eqz v0, :cond_16

    .line 312
    return-object v0

    .line 313
    :cond_16
    if-eqz v1, :cond_19

    .line 314
    return-object v1

    .line 316
    :cond_19
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    return-object v2
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 216
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 218
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 220
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 221
    .local v1, "version":I
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5e

    .line 224
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 225
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 226
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    .line 228
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v3, 0x1

    aput-object p1, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 226
    const-string/jumbo v4, "locksettings"

    const-string/jumbo v6, "user=? AND name=?"

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4f

    .line 230
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 231
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_4c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_4f
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, v0, p3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 236
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v0, v3, :cond_5a

    move-object v3, p2

    goto :goto_5d

    :cond_5a
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_5d
    return-object v3

    .line 221
    .end local v0  # "result":Ljava/lang/Object;
    .end local v1  # "version":I
    .end local v2  # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4  # "cursor":Landroid/database/Cursor;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 5

    .line 635
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 636
    .local v0, "persistentDataBlock":Lcom/android/server/PersistentDataBlockManagerInternal;
    if-nez v0, :cond_9

    .line 637
    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v1

    .line 640
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v1

    .line 641
    :catch_12
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "LockSettingsStorage"

    const-string v3, "Error reading persistent data block"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v2
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .registers 6
    .param p1, "userId"  # I
    .param p2, "handle"  # J
    .param p4, "name"  # Ljava/lang/String;

    .line 494
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public removeChildProfileLock(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 324
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 327
    goto :goto_c

    .line 325
    :catch_8
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public removeUser(I)V
    .registers 10
    .param p1, "userId"  # I

    .line 564
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 566
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 567
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 569
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_50

    .line 571
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 572
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 575
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 576
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 578
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 579
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 580
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 581
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 582
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 584
    .end local v5  # "name":Ljava/lang/String;
    .end local v6  # "file":Ljava/io/File;
    :cond_4b
    monitor-exit v4

    goto :goto_53

    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_4d

    throw v3

    .line 587
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 590
    :goto_53
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v4

    .line 592
    .local v4, "spStateDir":Ljava/io/File;
    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 593
    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 595
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    .line 599
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_57 .. :try_end_88} :catchall_8d

    .line 601
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 602
    nop

    .line 603
    return-void

    .line 601
    :catchall_8d
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    .line 188
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    .line 189
    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "lock"  # [B

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 332
    return-void
.end method

.method public writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V
    .registers 7
    .param p1, "hash"  # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p2, "userId"  # I

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "patternHash":[B
    const/4 v1, 0x0

    .line 439
    .local v1, "passwordHash":[B
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 440
    iget-object v1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    goto :goto_11

    .line 441
    :cond_a
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 442
    iget-object v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 444
    :cond_11
    :goto_11
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 445
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 446
    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "db"  # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 196
    const-string/jumbo v0, "locksettings"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_21
    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 204
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 203
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 207
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_45

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    nop

    .line 212
    return-void

    .line 209
    :catchall_45
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 192
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .registers 7
    .param p1, "persistentType"  # I
    .param p2, "userId"  # I
    .param p3, "qualityForUi"  # I
    .param p4, "payload"  # [B

    .line 626
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 627
    .local v0, "persistentDataBlock":Lcom/android/server/PersistentDataBlockManagerInternal;
    if-nez v0, :cond_7

    .line 628
    return-void

    .line 630
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    .line 632
    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "handle"  # J
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "data"  # [B

    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    .line 490
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 491
    return-void
.end method
