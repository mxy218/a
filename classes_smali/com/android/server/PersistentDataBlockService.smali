.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field private static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private mIsWritable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 137
    iput-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    .line 441
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 650
    new-instance v0, Lcom/android/server/PersistentDataBlockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$2;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 142
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 143
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 103
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/PersistentDataBlockService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/PersistentDataBlockService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .registers 7

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 289
    .local v0, "digest":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 292
    :try_start_8
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_3b

    .line 297
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 300
    const/16 v3, 0x20

    :try_start_1c
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 301
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_2a
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 306
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    nop

    .line 308
    const/4 v1, 0x1

    return v1

    .line 306
    :catchall_28
    move-exception v1

    goto :goto_37

    .line 302
    :catch_2a
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to write block checksum"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 304
    nop

    .line 306
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 304
    return v1

    .line 306
    .end local v3  # "e":Ljava/io/IOException;
    :goto_37
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 294
    .end local v2  # "outputStream":Ljava/io/DataOutputStream;
    :catch_3b
    move-exception v2

    .line 295
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    return v1

    .line 310
    .end local v2  # "e":Ljava/io/FileNotFoundException;
    :cond_45
    return v1
.end method

.method private computeDigestLocked([B)[B
    .registers 10
    .param p1, "storedDigest"  # [B

    .line 317
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_64

    .line 321
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 325
    :try_start_13
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_19} :catch_58

    .line 331
    .local v2, "md":Ljava/security/MessageDigest;
    nop

    .line 334
    const/16 v3, 0x20

    if-eqz p1, :cond_25

    :try_start_1e
    array-length v4, p1

    if-ne v4, v3, :cond_25

    .line 335
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_28

    .line 337
    :cond_25
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 341
    :goto_28
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 342
    .local v4, "data":[B
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 343
    :goto_30
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    move v6, v3

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3c

    .line 344
    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3b} :catch_47
    .catchall {:try_start_1e .. :try_end_3b} :catchall_45

    goto :goto_30

    .line 350
    .end local v4  # "data":[B
    .end local v6  # "read":I
    :cond_3c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 351
    nop

    .line 353
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 350
    :catchall_45
    move-exception v0

    goto :goto_54

    .line 346
    :catch_47
    move-exception v3

    .line 347
    .local v3, "e":Ljava/io/IOException;
    :try_start_48
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to read partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 348
    nop

    .line 350
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 348
    return-object v0

    .line 350
    .end local v3  # "e":Ljava/io/IOException;
    :goto_54
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 326
    .end local v2  # "md":Ljava/security/MessageDigest;
    :catch_58
    move-exception v2

    .line 328
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "SHA-256 not supported?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    return-object v0

    .line 318
    .end local v1  # "inputStream":Ljava/io/DataInputStream;
    .end local v2  # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_64
    move-exception v1

    .line 319
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    return-object v0
.end method

.method private doGetMaximumDataBlockSize()J
    .registers 6

    .line 433
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 435
    .local v0, "actualSize":J
    const-wide/32 v2, 0x19000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1b

    move-wide v2, v0

    :cond_1b
    return-wide v2
.end method

.method private doGetOemUnlockEnabled()Z
    .registers 8

    .line 413
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_45

    .line 417
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 420
    :try_start_13
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_33
    .catchall {:try_start_13 .. :try_end_16} :catchall_31

    .line 421
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 422
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    move v3, v0

    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2e

    .line 428
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 422
    return v3

    .line 423
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v1  # "inputStream":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/PersistentDataBlockService;
    :try_start_30
    throw v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 428
    .restart local v1  # "inputStream":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/PersistentDataBlockService;
    :catchall_31
    move-exception v0

    goto :goto_41

    .line 424
    :catch_33
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/IOException;
    :try_start_34
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    .line 426
    nop

    .line 428
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 426
    return v0

    .line 428
    .end local v2  # "e":Ljava/io/IOException;
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 414
    .end local v1  # "inputStream":Ljava/io/DataInputStream;
    :catch_45
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v0
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 11
    .param p1, "enabled"  # Z

    .line 385
    const-string v0, "1"

    const-string v1, "0"

    const-string/jumbo v2, "sys.oem_unlock_allowed"

    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_64

    .line 389
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 392
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 394
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 396
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 397
    .local v6, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 399
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 400
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_37} :catch_45
    .catchall {:try_start_14 .. :try_end_37} :catchall_43

    .line 405
    .end local v4  # "channel":Ljava/nio/channels/FileChannel;
    .end local v6  # "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    :goto_3b
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :catchall_43
    move-exception v4

    goto :goto_59

    .line 401
    :catch_45
    move-exception v4

    .line 402
    .local v4, "e":Ljava/io/IOException;
    :try_start_46
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unable to access persistent partition"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_43

    .line 405
    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    move-object v0, v1

    :goto_52
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 403
    return-void

    .line 405
    .end local v4  # "e":Ljava/io/IOException;
    :goto_59
    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v0, v1

    :goto_5d
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 386
    .end local v3  # "outputStream":Ljava/io/FileOutputStream;
    :catch_64
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    return-void
.end method

.method private enforceChecksumValidity()Z
    .registers 6

    .line 273
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 275
    .local v0, "storedDigest":[B
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    .line 277
    .local v2, "digest":[B
    if-eqz v2, :cond_17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_17

    .line 282
    .end local v2  # "digest":[B
    :cond_14
    monitor-exit v1

    .line 284
    const/4 v1, 0x1

    return v1

    .line 278
    .restart local v2  # "digest":[B
    :cond_17
    :goto_17
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "Formatting FRP partition..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 280
    monitor-exit v1

    return v3

    .line 282
    .end local v2  # "digest":[B
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private enforceIsAdmin()V
    .registers 5

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 226
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v1

    .line 227
    .local v1, "isAdmin":Z
    if-eqz v1, :cond_11

    .line 231
    return-void

    .line 228
    :cond_11
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceOemUnlockReadPermission()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 205
    const-string v2, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 207
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1e
    :goto_1e
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private enforceUid(I)V
    .registers 5
    .param p1, "callingUid"  # I

    .line 219
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-ne p1, v0, :cond_5

    .line 222
    return-void

    .line 220
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "userRestriction"  # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 238
    return-void

    .line 235
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 4

    .line 192
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    .line 193
    .local v0, "enabled":Z
    if-eqz v0, :cond_12

    .line 194
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 196
    monitor-exit v1

    goto :goto_12

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v2

    .line 199
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    const-string v1, "1"

    goto :goto_19

    :cond_17
    const-string v1, "0"

    :goto_19
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private formatPartitionLocked(Z)V
    .registers 7
    .param p1, "setOemUnlockEnabled"  # Z

    .line 359
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_43

    .line 363
    .local v0, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 365
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 367
    .local v2, "data":[B
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 368
    const v1, 0x19901873

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 369
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_26} :catch_33
    .catchall {:try_start_17 .. :try_end_26} :catchall_31

    .line 375
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 376
    nop

    .line 378
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 379
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 380
    return-void

    .line 375
    :catchall_31
    move-exception v1

    goto :goto_3f

    .line 371
    :catch_33
    move-exception v1

    .line 372
    .local v1, "e":Ljava/io/IOException;
    :try_start_34
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "failed to format block"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    .line 375
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    return-void

    .line 375
    .end local v1  # "e":Ljava/io/IOException;
    :goto_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 360
    .end local v0  # "outputStream":Ljava/io/DataOutputStream;
    .end local v2  # "data":[B
    :catch_43
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    return-void
.end method

.method private getAllowedUid(I)I
    .registers 9
    .param p1, "userHandle"  # I

    .line 148
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    const v1, 0x1040196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    .line 153
    .local v2, "allowedUid":I
    const/high16 v3, 0x100000

    :try_start_16
    invoke-virtual {v1, v0, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1c

    move v2, v3

    .line 158
    goto :goto_34

    .line 155
    :catch_1c
    move-exception v3

    .line 157
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v3  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_34
    return v2
.end method

.method private getBlockDeviceSize()J
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 257
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 259
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 261
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 259
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private getFrpCredentialDataOffset()J
    .registers 5

    .line 265
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTestHarnessModeDataOffset()J
    .registers 5

    .line 269
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 4
    .param p1, "inputStream"  # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 245
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 246
    .local v0, "blockId":I
    const v1, 0x19901873

    if-ne v0, v1, :cond_13

    .line 247
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "totalDataSize":I
    goto :goto_14

    .line 249
    .end local v1  # "totalDataSize":I
    :cond_13
    const/4 v1, 0x0

    .line 251
    .restart local v1  # "totalDataSize":I
    :goto_14
    return v1
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public synthetic lambda$onStart$0$PersistentDataBlockService()V
    .registers 3

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 167
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 168
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 169
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 171
    return-void
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"  # I

    .line 177
    const-string v0, "Service "

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_5b

    .line 179
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_10} :catch_37

    if-eqz v1, :cond_1b

    .line 185
    nop

    .line 186
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5b

    .line 180
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/PersistentDataBlockService;
    .end local p1  # "phase":I
    throw v1
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_37} :catch_37

    .line 182
    .restart local p0  # "this":Lcom/android/server/PersistentDataBlockService;
    .restart local p1  # "phase":I
    :catch_37
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 184
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 188
    .end local v1  # "e":Ljava/lang/InterruptedException;
    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 189
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 165
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".onStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 172
    return-void
.end method
