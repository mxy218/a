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
    const-string/jumbo p1, "ro.frp.pst"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 103
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/PersistentDataBlockService;Z)Z
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

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
    const/4 v0, 0x1

    return v0

    .line 306
    :catchall_28
    move-exception v0

    goto :goto_37

    .line 302
    :catch_2a
    move-exception v0

    .line 303
    :try_start_2b
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "failed to write block checksum"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 304
    nop

    .line 306
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 304
    return v1

    .line 306
    :goto_37
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 294
    :catch_3b
    move-exception v0

    .line 295
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    return v1

    .line 310
    :cond_45
    return v1
.end method

.method private computeDigestLocked([B)[B
    .registers 8

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
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_63

    .line 321
    nop

    .line 325
    :try_start_13
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_19} :catch_57

    .line 331
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
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 342
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 343
    :goto_30
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3b

    .line 344
    invoke-virtual {v2, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3a} :catch_46
    .catchall {:try_start_1e .. :try_end_3a} :catchall_44

    goto :goto_30

    .line 350
    :cond_3b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 351
    nop

    .line 353
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 350
    :catchall_44
    move-exception p1

    goto :goto_53

    .line 346
    :catch_46
    move-exception p1

    .line 347
    :try_start_47
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "failed to read partition"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_44

    .line 348
    nop

    .line 350
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 348
    return-object v0

    .line 350
    :goto_53
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 326
    :catch_57
    move-exception p1

    .line 328
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "SHA-256 not supported?"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    return-object v0

    .line 318
    :catch_63
    move-exception p1

    .line 319
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    const-wide/32 v2, 0x19000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move-wide v0, v2

    :goto_1c
    return-wide v0
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

    :try_start_30
    throw v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 428
    :catchall_31
    move-exception v0

    goto :goto_41

    .line 424
    :catch_33
    move-exception v2

    .line 425
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
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 414
    :catch_45
    move-exception v1

    .line 415
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v0
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 11

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
    nop

    .line 392
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 394
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
    :catch_64
    move-exception p1

    .line 387
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    return-void
.end method

.method private enforceChecksumValidity()Z
    .registers 4

    .line 273
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 275
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    .line 277
    if-eqz v2, :cond_17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_17

    .line 282
    :cond_14
    monitor-exit v1

    .line 284
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 280
    monitor-exit v1

    return v0

    .line 282
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private enforceIsAdmin()V
    .registers 3

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    .line 227
    if-eqz v0, :cond_11

    .line 231
    return-void

    .line 228
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const-string p1, " not allowed to access PST"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .registers 5

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

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 4

    .line 192
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    .line 193
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
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0

    .line 199
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    const-string v0, "1"

    goto :goto_19

    :cond_17
    const-string v0, "0"

    :goto_19
    const-string/jumbo v1, "sys.oem_unlock_allowed"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private formatPartitionLocked(Z)V
    .registers 6

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
    nop

    .line 365
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 367
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
    move-exception p1

    goto :goto_3f

    .line 371
    :catch_33
    move-exception p1

    .line 372
    :try_start_34
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to format block"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    .line 375
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    return-void

    .line 375
    :goto_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 360
    :catch_43
    move-exception p1

    .line 361
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available?"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    return-void
.end method

.method private getAllowedUid(I)I
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    const v1, 0x104019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    nop

    .line 153
    const/high16 v2, 0x100000

    :try_start_16
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1b

    .line 158
    goto :goto_34

    .line 155
    :catch_1b
    move-exception p1

    .line 157
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not able to find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    .line 159
    :goto_34
    return p1
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
    const v1, 0x19901873

    if-ne v0, v1, :cond_13

    .line 247
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    goto :goto_14

    .line 249
    :cond_13
    const/4 p1, 0x0

    .line 251
    :goto_14
    return p1
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
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " init timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_37} :catch_37

    .line 182
    :catch_37
    move-exception p1

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
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
