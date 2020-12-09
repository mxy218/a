.class Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
.super Ljava/lang/Object;
.source "VerityUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedShmBufferFactory"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mShm:Landroid/os/SharedMemory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/VerityUtils$1;)V
    .registers 2

    .line 366
    invoke-direct {p0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .registers 5

    .line 376
    const-string v0, "Failed to set protection"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2c

    .line 379
    const-string v1, "apkverity"

    invoke-static {v1, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 380
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 383
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 384
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p1

    .line 381
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple instantiation from this factory"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_34} :catch_34

    .line 385
    :catch_34
    move-exception p1

    .line 386
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLimit()I
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_a
    return v0
.end method

.method public releaseSharedMemory()Landroid/os/SharedMemory;
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 392
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 393
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 396
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 397
    return-object v0
.end method
