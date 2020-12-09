.class public Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
.super Ljava/lang/Object;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field static final VERSION_1:B = 0x1t

.field static final VERSION_2:B = 0x2t


# instance fields
.field final mAdbKeys:[B

.field final mAdbTempKeys:[B

.field final mVersion:I


# direct methods
.method constructor <init>(I[B[B)V
    .registers 4

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p1, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mVersion:I

    .line 410
    iput-object p2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 411
    iput-object p3, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    .line 412
    return-void
.end method

.method constructor <init>([B[B)V
    .registers 4

    .line 405
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V

    .line 406
    return-void
.end method

.method static fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
        }
    .end annotation

    .line 416
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 417
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 418
    const/4 v1, 0x1

    if-ne p0, v1, :cond_14

    .line 421
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 423
    :cond_14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 424
    new-array v1, v1, [B

    .line 425
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 426
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 427
    new-array v2, v2, [B

    .line 428
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 429
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v0

    .line 430
    :catch_2c
    move-exception p0

    .line 431
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;

    invoke-direct {v0, p0}, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method toBytes()[B
    .registers 4

    .line 437
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 439
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 441
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 442
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 444
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 445
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v0

    .line 446
    :catch_2c
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method