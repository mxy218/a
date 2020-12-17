.class public Lcom/android/server/net/watchlist/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final FILE_READ_BUFFER_SIZE:I = 0x4000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSha256Hash(Ljava/io/File;)[B
    .registers 5
    .param p0, "apkFile"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    return-object v1

    .line 37
    :catchall_d
    move-exception v1

    .end local v0  # "stream":Ljava/io/InputStream;
    .end local p0  # "apkFile":Ljava/io/File;
    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 39
    .restart local v0  # "stream":Ljava/io/InputStream;
    .restart local p0  # "apkFile":Ljava/io/File;
    :catchall_f
    move-exception v2

    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v2
.end method

.method public static getSha256Hash(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "stream"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 45
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    .local v0, "digester":Ljava/security/MessageDigest;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 49
    .local v1, "buf":[B
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    if-ltz v2, :cond_16

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_a

    .line 52
    :cond_16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2
.end method
