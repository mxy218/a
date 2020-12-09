.class public abstract Lcom/android/server/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/VerityUtils$TrackedBufferFactory;,
        Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;,
        Lcom/android/server/security/VerityUtils$SetupResult;
    }
.end annotation


# static fields
.field private static final COMMON_LINUX_PAGE_SIZE_IN_BYTES:I = 0x1000

.field private static final DEBUG:Z = false

.field public static final FSVERITY_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".fsv_sig"

.field private static final MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 103
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

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .registers 1

    .line 313
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native constructFsverityDescriptorNative(J)[B
.end method

.method private static native constructFsverityExtensionNative(SI)[B
.end method

.method private static native constructFsverityFooterNative(I)[B
.end method

.method private static native constructFsveritySignedDataNative([B)[B
.end method

.method private static native enableFsverityNative(Ljava/lang/String;)I
.end method

.method public static generateApkVerityRootHash(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateApkVeritySetupData(Ljava/lang/String;)Lcom/android/server/security/VerityUtils$SetupResult;
    .registers 4

    .line 144
    nop

    .line 146
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    if-nez v1, :cond_e

    .line 151
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->skipped()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0

    .line 168
    nop

    .line 151
    return-object p0

    .line 154
    :cond_e
    nop

    .line 155
    invoke-static {p0, v1}, Lcom/android/server/security/VerityUtils;->generateFsVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p0

    .line 156
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/SharedMemory;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_17} :catch_4a
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_17} :catch_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_4a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_17} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_17} :catch_4a
    .catchall {:try_start_2 .. :try_end_17} :catchall_48

    .line 157
    :try_start_17
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 158
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_39

    .line 162
    :cond_2c
    invoke-static {v0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/security/VerityUtils$SetupResult;->ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_34} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_34} :catch_45
    .catch Ljava/security/DigestException; {:try_start_17 .. :try_end_34} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_34} :catch_45
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_17 .. :try_end_34} :catch_45
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_34} :catch_45
    .catchall {:try_start_17 .. :try_end_34} :catchall_42

    .line 168
    nop

    .line 169
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 162
    return-object p0

    .line 160
    :cond_39
    :goto_39
    :try_start_39
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Ljava/security/DigestException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_39 .. :try_end_3d} :catch_45
    .catch Landroid/system/ErrnoException; {:try_start_39 .. :try_end_3d} :catch_45
    .catchall {:try_start_39 .. :try_end_3d} :catchall_42

    .line 168
    nop

    .line 169
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 160
    return-object p0

    .line 168
    :catchall_42
    move-exception p0

    move-object v0, v1

    goto :goto_5c

    .line 163
    :catch_45
    move-exception p0

    move-object v0, v1

    goto :goto_4b

    .line 168
    :catchall_48
    move-exception p0

    goto :goto_5c

    .line 163
    :catch_4a
    move-exception p0

    .line 165
    :goto_4b
    :try_start_4b
    const-string v1, "VerityUtils"

    const-string v2, "Failed to set up apk verity: "

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_48

    .line 168
    if-eqz v0, :cond_5b

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 166
    :cond_5b
    return-object p0

    .line 168
    :goto_5c
    if-eqz v0, :cond_61

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_61
    throw p0
.end method

.method private static generateFsVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Landroid/os/SharedMemory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 292
    nop

    .line 293
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0

    .line 296
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 301
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->getBufferLimit()I

    move-result p0

    .line 302
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->releaseSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    .line 303
    if-eqz p1, :cond_34

    .line 306
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p1, v0}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 307
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Failed to set up shared memory correctly"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to generate verity tree into shared memory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verity hash mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateFsverityDescriptorAndMeasurement(Ljava/io/RandomAccessFile;[BLjava/lang/String;Ljava/nio/ByteBuffer;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 231
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 235
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/security/VerityUtils;->constructFsverityDescriptorNative(J)[B

    move-result-object p0

    .line 239
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 243
    array-length p0, p1

    .line 244
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/android/server/security/VerityUtils;->constructFsverityExtensionNative(SI)[B

    move-result-object p0

    .line 245
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 248
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 251
    const/16 p0, 0x8

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p2, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 258
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    cmp-long p1, v2, v4

    if-gtz p1, :cond_73

    .line 262
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    .line 263
    const/4 p1, 0x3

    array-length p2, p0

    invoke-static {p1, p2}, Lcom/android/server/security/VerityUtils;->constructFsverityExtensionNative(SI)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->constructFsverityFooterNative(I)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 270
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 259
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Signature size is unexpectedly large: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateFsverityMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_8
    invoke-static {v0, p2}, Landroid/util/apk/VerityBuilder;->generateFsVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object p0

    .line 208
    iget-object p2, p0, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    .line 209
    iget v1, p0, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    iget-object p0, p0, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/security/VerityUtils;->generateFsverityDescriptorAndMeasurement(Ljava/io/RandomAccessFile;[BLjava/lang/String;Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 213
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->constructFsveritySignedDataNative([B)[B

    move-result-object p0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 215
    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 214
    return-object p0

    .line 204
    :catchall_25
    move-exception p0

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 215
    :catchall_27
    move-exception p1

    invoke-static {p0, v0}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method public static getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".fsv_sig"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 187
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hasFsverity(Ljava/lang/String;)Z
    .registers 4

    .line 124
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->measureFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 125
    if-eqz v0, :cond_2a

    .line 126
    sget v1, Landroid/system/OsConstants;->ENODATA:I

    if-eq v0, v1, :cond_28

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to measure fs-verity, errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VerityUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_28
    const/4 p0, 0x0

    return p0

    .line 131
    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static isFsveritySignatureFile(Ljava/io/File;)Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".fsv_sig"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native measureFsverityNative(Ljava/lang/String;)I
.end method

.method private static roundUpToNextMultiple(JJ)J
    .registers 6

    .line 425
    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_12

    .line 428
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    add-long/2addr p0, v0

    div-long/2addr p0, p2

    mul-long/2addr p0, p2

    return-wide p0

    .line 426
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arithmetic overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUpFsverity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 80
    new-instance v0, Lsun/security/pkcs/PKCS7;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 81
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 89
    invoke-static {p0, p1, v1}, Lcom/android/server/security/VerityUtils;->generateFsverityMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p1

    .line 91
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x1000

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/security/VerityUtils;->roundUpToNextMultiple(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 94
    invoke-virtual {v1}, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-long v5, v5

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    int-to-long v7, v7

    .line 98
    :goto_49
    cmp-long v9, v5, v7

    if-gez v9, :cond_55

    .line 99
    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v9
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_af

    int-to-long v9, v9

    .line 100
    add-long/2addr v5, v9

    .line 101
    sub-long/2addr v7, v9

    .line 102
    goto :goto_49

    .line 103
    :cond_55
    invoke-static {v2, v3}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 105
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 112
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->enableFsverityNative(Ljava/lang/String;)I

    move-result p1

    .line 113
    if-nez p1, :cond_65

    .line 117
    return-void

    .line 114
    :cond_65
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enable fs-verity on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {p1}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_88
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs-verity measurement mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v0}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :catchall_af
    move-exception p0

    :try_start_b0
    throw p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    .line 103
    :catchall_b1
    move-exception p1

    invoke-static {p0, v3}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method
